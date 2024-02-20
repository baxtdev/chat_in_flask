from django.contrib import admin
from .models import*
# Register your models here.
@admin.register(Room)
class RoomAdmin(admin.ModelAdmin):
    pass

@admin.register(Message)
class MessageAdmin(admin.ModelAdmin):
    readonly_fields = ('room','user','content','date_added')
    list_display = ('room','user','content','date_added')
    list_filter = ('room',)