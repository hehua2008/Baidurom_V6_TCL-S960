.class Lcom/mediatek/settings/wfd/WfdSettingsExt$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSettingsExt;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 126
    const-string v0, "WfdSettingsExt"

    const-string v1, "ContentObserver, onChange()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    #getter for: Lcom/mediatek/settings/wfd/WfdSettingsExt;->mWfdPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->access$000(Lcom/mediatek/settings/wfd/WfdSettingsExt;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->updateWfdPreferenceSummary(Landroid/preference/Preference;)V

    .line 128
    return-void
.end method
