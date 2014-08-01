.class Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;
.super Ljava/lang/Object;
.source "JrdPowerSaveSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "power_saving_mode"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "power_saving_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 352
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #calls: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->getTimoutValue()I
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$000(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)I

    move-result v1

    .line 353
    .local v1, currentTimeout:I
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #calls: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->getBrightnessValue()I
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$100(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)I

    move-result v0

    .line 354
    .local v0, currentBrightness:I
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #getter for: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$200(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 355
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #getter for: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$200(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #calls: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->updateTimeoutPreferenceDescription(I)V
    invoke-static {v2, v1}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$300(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;I)V

    .line 359
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #getter for: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$200(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v4, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 360
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #getter for: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$400(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 361
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #getter for: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$400(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #calls: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->updateBrightnessPreferenceDescription(I)V
    invoke-static {v2, v0}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$500(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;I)V

    .line 363
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #getter for: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$400(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 368
    .end local v0           #currentBrightness:I
    .end local v1           #currentTimeout:I
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 346
    goto :goto_0

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #getter for: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$200(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 366
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    #getter for: Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->access$400(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method
