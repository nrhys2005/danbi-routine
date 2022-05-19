from django.db import models
from safedelete import SOFT_DELETE_CASCADE
from safedelete.models import SafeDeleteModel

from routine.models.routine import Routine


class RoutineResult(SafeDeleteModel):
    _safedelete_policy = SOFT_DELETE_CASCADE
    routine_result_id = models.IntegerField(primary_key=True)
    routine_id = models.ForeignKey(Routine, on_delete=models.CASCADE)
    result = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['created']