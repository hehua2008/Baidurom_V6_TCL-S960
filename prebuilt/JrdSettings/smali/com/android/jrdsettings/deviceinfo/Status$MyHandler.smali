.class Lcom/android/jrdsettings/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/jrdsettings/deviceinfo/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/deviceinfo/Status;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 160
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 164
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/deviceinfo/Status;

    .line 165
    .local v1, status:Lcom/android/jrdsettings/deviceinfo/Status;
    if-nez v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 169
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 171
    :sswitch_0
    invoke-virtual {v1}, Lcom/android/jrdsettings/deviceinfo/Status;->updateSignalStrength()V

    goto :goto_0

    .line 175
    :sswitch_1
    #getter for: Lcom/android/jrdsettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v1}, Lcom/android/jrdsettings/deviceinfo/Status;->access$000(Lcom/android/jrdsettings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 176
    .local v0, serviceState:Landroid/telephony/ServiceState;
    #calls: Lcom/android/jrdsettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v1, v0}, Lcom/android/jrdsettings/deviceinfo/Status;->access$100(Lcom/android/jrdsettings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 180
    .end local v0           #serviceState:Landroid/telephony/ServiceState;
    :sswitch_2
    invoke-virtual {v1}, Lcom/android/jrdsettings/deviceinfo/Status;->updateTimes()V

    .line 181
    const/16 v2, 0x1f4

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method
