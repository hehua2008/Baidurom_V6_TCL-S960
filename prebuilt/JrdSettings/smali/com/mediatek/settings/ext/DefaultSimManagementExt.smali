.class public Lcom/mediatek/settings/ext/DefaultSimManagementExt;
.super Ljava/lang/Object;
.source "DefaultSimManagementExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISimManagementExt;


# static fields
.field private static final KEY_3G_SERVICE_SETTING:Ljava/lang/String; = "3g_service_settings"

.field private static final KEY_SIM_STATUS:Ljava/lang/String; = "status_info"

.field private static final TAG:Ljava/lang/String; = "DefaultSimManagementExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeSimColorEditPreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 71
    return-void
.end method

.method public customizeSimInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    return-object p1
.end method

.method public customizeSmsChoiceArray(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, smsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public customizeSmsChoiceValueArray(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, smsValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public customizeVoiceChoiceArray(Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter "voipAvailable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, voiceList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public dealWithDataConnChanged(Landroid/content/Intent;Z)V
    .locals 0
    .parameter "intent"
    .parameter "isResumed"

    .prologue
    .line 50
    return-void
.end method

.method public isNeedsetAutoItem()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public setToClosedSimSlot(I)V
    .locals 0
    .parameter "simSlot"

    .prologue
    .line 67
    return-void
.end method

.method public showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V
    .locals 2
    .parameter "prefFragment"
    .parameter "isResumed"

    .prologue
    .line 61
    const-string v0, "DefaultSimManagementExt"

    const-string v1, "showChangeDataConnDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public updateDefaultSIMSummary(Landroid/preference/DialogPreference;Ljava/lang/Long;)V
    .locals 0
    .parameter "pref"
    .parameter "simId"

    .prologue
    .line 54
    return-void
.end method

.method public updateSimEditorPref(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 47
    return-void
.end method

.method public updateSimManagementPref(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .parameter "parent"

    .prologue
    .line 28
    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, pref3GService:Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .line 31
    .local v2, prefWapPush:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 32
    .local v1, prefStatus:Landroid/preference/PreferenceScreen;
    if-eqz p1, :cond_0

    .line 33
    const-string v3, "3g_service_settings"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref3GService:Landroid/preference/PreferenceScreen;
    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 34
    .restart local v0       #pref3GService:Landroid/preference/PreferenceScreen;
    const-string v3, "status_info"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #prefStatus:Landroid/preference/PreferenceScreen;
    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 36
    .restart local v1       #prefStatus:Landroid/preference/PreferenceScreen;
    :cond_0
    if-eqz v0, :cond_1

    .line 37
    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()---remove pref3GService"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 40
    :cond_1
    if-eqz v1, :cond_2

    .line 41
    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()---remove prefStatus"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 44
    :cond_2
    return-void
.end method
