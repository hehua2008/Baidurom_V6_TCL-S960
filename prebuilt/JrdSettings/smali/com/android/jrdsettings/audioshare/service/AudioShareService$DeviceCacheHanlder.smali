.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
.super Landroid/os/Handler;
.source "AudioShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceCacheHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1514
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    .line 1515
    .local v0, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    if-nez v0, :cond_0

    .line 1529
    :goto_0
    return-void

    .line 1518
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1520
    :pswitch_1
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->addDeviceToCache(Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V
    invoke-static {v1, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$4000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V

    goto :goto_0

    .line 1523
    :pswitch_2
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->removeDeviceFromCache(Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V
    invoke-static {v1, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$4100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V

    goto :goto_0

    .line 1526
    :pswitch_3
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->updateDeviceInfoFromCache(Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V
    invoke-static {v1, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$4200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V

    goto :goto_0

    .line 1518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
