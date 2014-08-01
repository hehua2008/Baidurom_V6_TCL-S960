.class Lcom/android/jrdsettings/DisplaySettings$2;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/jrdsettings/DisplaySettings$2;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 220
    const-string v1, "DisplaySettings"

    const-string v2, "mScreenTimeoutObserver omChanged"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$2;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 223
    .local v0, value:I
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$2;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #calls: Lcom/android/jrdsettings/DisplaySettings;->updateTimeoutPreference(I)V
    invoke-static {v1, v0}, Lcom/android/jrdsettings/DisplaySettings;->access$100(Lcom/android/jrdsettings/DisplaySettings;I)V

    .line 224
    return-void
.end method
