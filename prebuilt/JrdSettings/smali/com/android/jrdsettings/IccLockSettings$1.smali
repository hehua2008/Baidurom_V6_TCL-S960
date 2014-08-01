.class Lcom/android/jrdsettings/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/jrdsettings/IccLockSettings$1;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 134
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 136
    :pswitch_0
    const-string v3, "IccLockSettings"

    const-string v4, "MSG_ENABLE_ICC_PIN_COMPLETE"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$1;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    #calls: Lcom/android/jrdsettings/IccLockSettings;->iccLockChanged(Z)V
    invoke-static {v3, v1}, Lcom/android/jrdsettings/IccLockSettings;->access$000(Lcom/android/jrdsettings/IccLockSettings;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 140
    :pswitch_1
    const-string v3, "IccLockSettings"

    const-string v4, "MSG_CHANGE_ICC_PIN_COMPLETE"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$1;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    :goto_2
    #calls: Lcom/android/jrdsettings/IccLockSettings;->iccPinChanged(Z)V
    invoke-static {v3, v1}, Lcom/android/jrdsettings/IccLockSettings;->access$100(Lcom/android/jrdsettings/IccLockSettings;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 144
    :pswitch_2
    const-string v1, "IccLockSettings"

    const-string v2, "MSG_SIM_STATE_CHANGED"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$1;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #calls: Lcom/android/jrdsettings/IccLockSettings;->updatePreferences()V
    invoke-static {v1}, Lcom/android/jrdsettings/IccLockSettings;->access$200(Lcom/android/jrdsettings/IccLockSettings;)V

    .line 146
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings$1;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #calls: Lcom/android/jrdsettings/IccLockSettings;->updateOnSimLockStateChanged()V
    invoke-static {v1}, Lcom/android/jrdsettings/IccLockSettings;->access$300(Lcom/android/jrdsettings/IccLockSettings;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
