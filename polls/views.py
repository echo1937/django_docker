from django.http import HttpResponse

from django.db import models
from rest_framework import serializers
from rest_framework import viewsets


class Poll(models.Model):
    name = models.CharField(max_length=128)

    class Meta:
        ordering = ['-id']


class PollSerializer(serializers.ModelSerializer):
    class Meta:
        model = Poll
        fields = '__all__'


class PollViewSet(viewsets.ModelViewSet):
    queryset = Poll.objects.all().order_by('id')
    serializer_class = PollSerializer
