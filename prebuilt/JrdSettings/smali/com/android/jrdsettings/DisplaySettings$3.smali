.class Lcom/android/jrdsettings/DisplaySettings$3;
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
    .line 228
    iput-object p1, p0, Lcom/android/jrdsettings/DisplaySettings$3;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 231
    const-string v1, "DisplaySettings"

    const-string v2, "mScreenTimeoutObserver omChanged"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$3;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$3;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 238
    .local v0, value:I
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$3;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #getter for: Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/jrdsettings/DisplaySettings;->access$200(Lcom/android/jrdsettings/DisplaySettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$3;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #calls: Lcom/android/jrdsettings/DisplaySettings;->updateScreenOffPreference(I)V
    invoke-static {v1, v0}, Lcom/android/jrdsettings/DisplaySettings;->access$300(Lcom/android/jrdsettings/DisplaySettings;I)V

    .line 240
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$3;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #calls: Lcom/android/jrdsettings/DisplaySettings;->updateScreenOffPreferenceDescription(I)V
    invoke-static {v1, v0}, Lcom/android/jrdsettings/DisplaySettings;->access$400(Lcom/android/jrdsettings/DisplaySettings;I)V

    goto :goto_0
.end method
