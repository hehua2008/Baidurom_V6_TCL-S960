.class public Lcom/android/jrdsettings/hifi/HifiSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "HifiSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HifiSettings"


# instance fields
.field private mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 21
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v4, 0x7f06001d

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 24
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x207000b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 27
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 28
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 29
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 30
    :cond_0
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 32
    .local v2, padding:I
    invoke-virtual {v0, v7, v7, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 33
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 35
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 41
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/jrdsettings/hifi/HifiEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/jrdsettings/hifi/HifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/jrdsettings/hifi/HifiSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    .line 42
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/hifi/HifiEnabler;->pause()V

    .line 50
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/hifi/HifiEnabler;->resume()V

    .line 58
    :cond_0
    return-void
.end method
