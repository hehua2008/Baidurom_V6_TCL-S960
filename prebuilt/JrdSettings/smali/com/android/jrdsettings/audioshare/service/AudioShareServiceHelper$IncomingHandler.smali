.class Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;
.super Landroid/os/Handler;
.source "AudioShareServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field private imBundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 188
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage --------------1 msg.what = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mIsBound:Z
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$200(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 319
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage --------------2 msg.what = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 194
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 318
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    .line 197
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 198
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    const-string v8, "deviceUDN"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, udn:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    const-string v8, "playingState"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, state:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz v6, :cond_1

    .line 204
    if-eqz v5, :cond_1

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, msgID:I
    const-string v7, "ERROR"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 208
    const/4 v2, 0x2

    .line 224
    :goto_2
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v7, v8, v6, v2}, Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;->onDlnaDeviceOperationCompleteEvent(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 209
    :cond_2
    const-string v7, "PLAYING"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 211
    const/4 v2, 0x3

    goto :goto_2

    .line 212
    :cond_3
    const-string v7, "STOPPED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 214
    const/4 v2, 0x0

    goto :goto_2

    .line 215
    :cond_4
    const-string v7, "PAUSED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 217
    const/4 v2, 0x3

    goto :goto_2

    .line 218
    :cond_5
    const-string v7, "TRANSFERING"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 220
    const/4 v2, 0x1

    goto :goto_2

    .line 222
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 235
    .end local v2           #msgID:I
    .end local v5           #state:Ljava/lang/String;
    .end local v6           #udn:Ljava/lang/String;
    :pswitch_2
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v7

    const-string v8, "deviceName"

    const-string v9, "deviceUDN"

    const/4 v10, 0x1

    invoke-interface {v7, v8, v9, v10}, Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;->onDlnaDeviceOperationCompleteEvent(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 240
    :pswitch_3
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MSG_DLNA_DEVICE_REQUEST_LIST============="

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    .line 243
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 245
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    const-string v8, "deviceInfos"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    .local v0, deviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    if-nez v0, :cond_7

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #deviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .restart local v0       #deviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    :cond_7
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;->onDlnaDeviceRequestListCompleteEvent(Ljava/util/List;)V

    goto/16 :goto_1

    .line 256
    .end local v0           #deviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    :pswitch_4
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MSG_DLNA_DEVICE_ADDED============"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    .line 258
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 259
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    const-string v8, "deviceName"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    const-string v8, "deviceUDN"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    .restart local v6       #udn:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    const-string v8, "playingState"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, sState:Ljava/lang/String;
    const/4 v5, 0x0

    .line 266
    .local v5, state:I
    if-eqz v6, :cond_1

    .line 267
    if-eqz v4, :cond_8

    .line 268
    const-string v7, "PLAYING"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 270
    const/4 v5, 0x3

    .line 276
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v7

    invoke-interface {v7, v6, v3, v5}, Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;->onDlnaDeviceAdded(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 271
    :cond_9
    const-string v7, "TRANSFERING"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 273
    const/4 v5, 0x1

    goto :goto_3

    .line 287
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #sState:Ljava/lang/String;
    .end local v5           #state:I
    .end local v6           #udn:Ljava/lang/String;
    :pswitch_5
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MSG_DLNA_DEVICE_REMOVED============"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    .line 289
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 290
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    const-string v8, "deviceName"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 292
    .restart local v3       #name:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    const-string v8, "deviceUDN"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 294
    .restart local v6       #udn:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 295
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MSG_DLNA_DEVICE_REMOVED============ 2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v7

    invoke-interface {v7, v3, v6}, Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;->onDlnaDeviceRemoved(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 302
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #udn:Ljava/lang/String;
    :pswitch_6
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MSG_DLNA_DEVICE_LOCAL_MUTE============"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    .line 304
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 305
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->imBundle:Landroid/os/Bundle;

    const-string v8, "muteValue"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, localMute:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v7

    const-string v8, "True"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;->onLocalMuteChanged(Z)V

    goto/16 :goto_1

    .line 315
    .end local v1           #localMute:Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "null == mOnDlnaEventListener"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
