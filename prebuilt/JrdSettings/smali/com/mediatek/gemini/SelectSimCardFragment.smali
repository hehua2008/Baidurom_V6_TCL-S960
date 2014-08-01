.class public Lcom/mediatek/gemini/SelectSimCardFragment;
.super Lcom/mediatek/gemini/SimInfoPrefFragment;
.source "SelectSimCardFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectSimCardFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/mediatek/gemini/SimInfoPrefFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const-string v0, "SelectSimCardFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 25
    instance-of v5, p2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    if-eqz v5, :cond_0

    move-object v3, p2

    .line 26
    check-cast v3, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 27
    .local v3, simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v4

    .line 29
    .local v4, slotId:I
    invoke-virtual {v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimInfoId()J

    move-result-wide v1

    .line 30
    .local v1, simId:J
    const-string v5, "slotid"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string v5, "simid"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32
    const-string v5, "simId"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    const-string v5, "SelectSimCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick with slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and simid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 36
    const/4 v5, 0x1

    .line 38
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #simId:J
    .end local v3           #simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v4           #slotId:I
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
