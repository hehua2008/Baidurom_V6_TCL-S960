.class Lcom/android/jrdsettings/audioshare/AudioShareSettings$5;
.super Ljava/lang/Object;
.source "AudioShareSettings.java"

# interfaces
.implements Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/AudioShareSettings;->addDevice(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$5;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceSelected(Ljava/lang/String;)V
    .locals 3
    .parameter "udn"

    .prologue
    .line 581
    const-string v0, "AudioShareSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceSelected udn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$5;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->clearResetDevicesStatus(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$5;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->dlnaPlay(Ljava/lang/String;)V

    .line 585
    return-void
.end method
