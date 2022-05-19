from django.db import models
from safedelete import SOFT_DELETE_CASCADE
from safedelete.models import SafeDeleteModel

from routine.models.routine import Routine


class RoutineDay(SafeDeleteModel):
    _safedelete_policy = SOFT_DELETE_CASCADE
    day = models.DateTimeField(auto_now_add=True)
    routine_id = models.ForeignKey(Routine, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['created']