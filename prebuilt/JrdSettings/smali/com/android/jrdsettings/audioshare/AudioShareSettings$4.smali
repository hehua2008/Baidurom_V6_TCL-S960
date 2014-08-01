.class Lcom/android/jrdsettings/audioshare/AudioShareSettings$4;
.super Ljava/lang/Object;
.source "AudioShareSettings.java"

# interfaces
.implements Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/AudioShareSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 370
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$4;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public off()V
    .locals 2

    .prologue
    .line 387
    const-string v0, "AudioShareSettings"

    const-string v1, "ISwitchOnOffCallBack ============= OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public on()V
    .locals 2

    .prologue
    .line 377
    const-string v0, "AudioShareSettings"

    const-string v1, "ISwitchOnOffCallBack ============= ON"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method
