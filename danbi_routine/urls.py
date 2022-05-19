from django.urls import include, path

urlpatterns = [
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    path('user/', include('user.urls')),
    path('routine/', include('routine.urls')),
]
