.class public Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;
.super Landroid/content/ContextWrapper;
.source "DefaultSettingsMiscExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISettingsMiscExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSettingsMiscExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public addCustomizedItem(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public customizeLocationHeaderClick(Landroid/preference/PreferenceActivity$Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 45
    return-void
.end method

.method public customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "simString"
    .parameter "slotId"

    .prologue
    .line 41
    return-object p1
.end method

.method public getTetherWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 27
    const v0, 0x1040441

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWifiToggleCouldDisabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public setFactoryResetTitle(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 35
    return-void
.end method

.method public setTimeoutPrefTitle(Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 32
    return-void
.end method
