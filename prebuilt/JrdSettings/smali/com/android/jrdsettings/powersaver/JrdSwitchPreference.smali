.class public Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;
.super Landroid/preference/Preference;
.source "JrdSwitchPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field mPowSaverSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mPowSaverSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mPowSaverSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 29
    const v0, 0x7f0b014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mPowSaverSwitch:Landroid/widget/Switch;

    .line 30
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mPowSaverSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_saving_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mPowSaverSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference$1;-><init>(Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    return-void

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "bCheck"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mPowSaverSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->mPowSaverSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 47
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 49
    :cond_0
    return-void
.end method
