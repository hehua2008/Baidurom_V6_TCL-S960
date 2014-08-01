.class public Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
.super Lcom/android/jrdsettings/ProgressCategoryBase;
.source "AudioShareDeviceCategory.java"


# instance fields
.field private mEmptyTextRes:I

.field private mIsWifiConnected:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mProgress:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mIsWifiConnected:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mList:Ljava/util/ArrayList;

    .line 83
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 84
    const v0, 0x7f0901cd

    iput v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mEmptyTextRes:I

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "emptyTextRes"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mProgress:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mIsWifiConnected:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mList:Ljava/util/ArrayList;

    .line 77
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 78
    iput p3, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mEmptyTextRes:I

    .line 79
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearDevice()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->removeAll()V

    .line 140
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 144
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mEmptyTextRes:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 145
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-super {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundAdded:Z

    .line 150
    return-void
.end method

.method public clearResetDevicesStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "udn"

    .prologue
    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 154
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 155
    .local v1, preference:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 156
    instance-of v2, v1, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    check-cast v1, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    .end local v1           #preference:Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->clearStatus()V

    .line 153
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .restart local v1       #preference:Landroid/preference/Preference;
    :cond_1
    check-cast v1, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    .end local v1           #preference:Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setSelected()V

    goto :goto_1

    .line 165
    :cond_2
    return-void
.end method

.method public getAllList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 90
    const v4, 0x7f0b0016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, progressBar:Landroid/view/View;
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ne v4, v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v4, v5, :cond_4

    :cond_0
    move v0, v3

    .line 93
    .local v0, noDeviceFound:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mProgress:Z

    if-eqz v4, :cond_5

    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-boolean v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mProgress:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_6

    .line 96
    :cond_1
    iget-boolean v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_3

    .line 97
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :cond_2
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundAdded:Z

    .line 117
    :cond_3
    :goto_2
    return-void

    .end local v0           #noDeviceFound:Z
    :cond_4
    move v0, v2

    .line 92
    goto :goto_0

    .line 93
    .restart local v0       #noDeviceFound:Z
    :cond_5
    const/16 v4, 0x8

    goto :goto_1

    .line 104
    :cond_6
    iget-boolean v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundAdded:Z

    if-nez v4, :cond_3

    .line 105
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v4, :cond_7

    .line 106
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 107
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v5, 0x7f040014

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 109
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v5, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mEmptyTextRes:I

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 110
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 112
    :cond_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-super {p0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 114
    iput-boolean v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundAdded:Z

    goto :goto_2
.end method

.method public removeAll()V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removePreference(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMessage(I)V
    .locals 2
    .parameter "messageRes"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mEmptyTextRes:I

    .line 128
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mEmptyTextRes:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public setNoDeviceFoundAdded(Z)V
    .locals 0
    .parameter "noDeviceFoundAdded"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mNoDeviceFoundAdded:Z

    .line 136
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->mProgress:Z

    .line 123
    return-void
.end method
