from django.contrib.auth.models import User
from django.db import models
from safedelete import SOFT_DELETE_CASCADE
from safedelete.models import SafeDeleteModel


class Routine(SafeDeleteModel):
    _safedelete_policy = SOFT_DELETE_CASCADE
    routine_id = models.IntegerField(primary_key=True)
    account_id = models.ForeignKey(User, on_delete=models.CASCADE)
    title = models.TextField()
    category = models.TextField()
    goal = models.TextField()
    is_alarm = models.BooleanField()
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['created']