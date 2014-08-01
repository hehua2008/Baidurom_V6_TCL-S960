.class Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;
.super Ljava/lang/Object;
.source "JrdPowerSaveSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;->this$1:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;->this$1:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;

    iget-object v0, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    iget-object v1, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mWhitelistPreferenceCategory:Landroid/preference/PreferenceCategory;

    monitor-enter v1

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;->this$1:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;

    iget-object v0, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    iget-object v0, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mWhitelistPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;->this$1:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;

    iget-object v2, v2, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    iget-object v2, v2, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mWhitelistPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;->this$1:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 648
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;->this$1:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;

    iget-object v0, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;

    iget-object v0, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mWhiteList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference$1;->this$1:Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 649
    monitor-exit v1

    .line 650
    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
