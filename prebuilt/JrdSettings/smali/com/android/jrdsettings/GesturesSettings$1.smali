.class Lcom/android/jrdsettings/GesturesSettings$1;
.super Ljava/lang/Object;
.source "GesturesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/GesturesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/GesturesSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/GesturesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/jrdsettings/GesturesSettings$1;->this$0:Lcom/android/jrdsettings/GesturesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings$1;->this$0:Lcom/android/jrdsettings/GesturesSettings;

    #getter for: Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/GesturesSettings;->access$000(Lcom/android/jrdsettings/GesturesSettings;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings$1;->this$0:Lcom/android/jrdsettings/GesturesSettings;

    #getter for: Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/GesturesSettings;->access$000(Lcom/android/jrdsettings/GesturesSettings;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings$1;->this$0:Lcom/android/jrdsettings/GesturesSettings;

    #getter for: Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/jrdsettings/GesturesSettings;->access$100(Lcom/android/jrdsettings/GesturesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/GesturesSettings$1;->this$0:Lcom/android/jrdsettings/GesturesSettings;

    #getter for: Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/GesturesSettings;->access$000(Lcom/android/jrdsettings/GesturesSettings;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    if-nez p2, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings$1;->this$0:Lcom/android/jrdsettings/GesturesSettings;

    invoke-virtual {v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "snooze_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings$1;->this$0:Lcom/android/jrdsettings/GesturesSettings;

    invoke-virtual {v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stop_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 231
    return-void

    .line 226
    :cond_2
    if-ne p2, v2, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings$1;->this$0:Lcom/android/jrdsettings/GesturesSettings;

    invoke-virtual {v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "snooze_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings$1;->this$0:Lcom/android/jrdsettings/GesturesSettings;

    invoke-virtual {v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stop_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
