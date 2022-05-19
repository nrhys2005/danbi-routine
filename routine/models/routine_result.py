from django.db import models
from safedelete import SOFT_DELETE_CASCADE
from safedelete.models import SafeDeleteModel


class Routine(models.Model, SafeDeleteModel):
    _safedelete_policy = SOFT_DELETE_CASCADE
    routine_id = models.DateTimeField(auto_now_add=True)
    account_id = models.CharField(max_length=100, blank=True, default='')
    title = models.TextField()
    category = models.BooleanField(default=False)
    goal = models.CharField(choices=LANGUAGE_CHOICES, default='python', max_length=100)
    is_alarm = models.CharField(choices=STYLE_CHOICES, default='friendly', max_length=100)
    created_at = models.CharField(choices=LANGUAGE_CHOICES, default='python', max_length=100)
    modified_at = models.CharField(choices=STYLE_CHOICES, default='friendly', max_length=100)

    class Meta:
        ordering = ['created']