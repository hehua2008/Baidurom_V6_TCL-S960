.class Lcom/mediatek/settings/wfd/WfdSettingsExt$2;
.super Landroid/content/BroadcastReceiver;
.source "WfdSettingsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSettingsExt;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$2;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "WfdSettingsExt"

    const-string v1, "receive WIFI_DISPLAY_STATUS_CHANGED broadcast"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$2;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$2;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    #getter for: Lcom/mediatek/settings/wfd/WfdSettingsExt;->mWfdPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->access$000(Lcom/mediatek/settings/wfd/WfdSettingsExt;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->updateWfdPreferenceSummary(Landroid/preference/Preference;)V

    .line 138
    :cond_0
    return-void
.end method
