.class public Lcom/mediatek/settings/ext/DefaultBatteryExt;
.super Ljava/lang/Object;
.source "DefaultBatteryExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IBatteryExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 0
    .parameter "context"
    .parameter "listGroup"

    .prologue
    .line 13
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
