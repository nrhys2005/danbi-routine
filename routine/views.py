from django.contrib.auth.models import User
from rest_framework import viewsets
from rest_framework import permissions
# from routine.serializers import RoutineSerializer


class RoutineViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all().order_by('-date_joined')
    # serializer_class = RoutineSerializer
    permission_classes = [permissions.IsAuthenticated]
