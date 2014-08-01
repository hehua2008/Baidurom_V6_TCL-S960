.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;
.super Ljava/lang/Object;
.source "AudioShareService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoRefreshDevicesThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .local v3, udns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1191
    .local v2, speakerList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3400()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1192
    :try_start_0
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1193
    monitor-exit v5

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getSpeakerList()Ljava/util/HashMap;

    move-result-object v2

    .line 1196
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1199
    .local v1, speaker:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1196
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #speaker:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1201
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v5, 0x3

    const/16 v6, 0x1388

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->removeOfflineDevices(Ljava/util/ArrayList;II)V
    invoke-static {v4, v3, v5, v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3300(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/util/ArrayList;II)V

    .line 1203
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1204
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1206
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1207
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
