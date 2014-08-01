.class Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$1;
.super Ljava/lang/Object;
.source "AudioShareServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mService:Landroid/os/Messenger;
    invoke-static {v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$002(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 155
    const/4 v2, 0x0

    const/16 v3, 0xb

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 157
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    iget-object v2, v2, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 158
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mService:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 168
    const/4 v2, 0x0

    const/16 v3, 0xc

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 170
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    iget-object v2, v2, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 171
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mService:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
