.class public Lcom/mediatek/nfc/CardEmulationSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "CardEmulationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CATEGORY_KEY:Ljava/lang/String; = "card_emulation_settings_category"

.field private static final TAG:Ljava/lang/String; = "CardEmulationSettings"


# instance fields
.field private EMULATION_OFF:Ljava/lang/String;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private final mActiveCardModeObserver:Landroid/database/ContentObserver;

.field private mActivePref:Lcom/mediatek/nfc/SecurityItemPreference;

.field private final mCardModeListObserver:Landroid/database/ContentObserver;

.field private final mCardSwitchingObserver:Landroid/database/ContentObserver;

.field private final mCardtransactionObserver:Landroid/database/ContentObserver;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mItemKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/nfc/SecurityItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

.field private mUpdateStatusOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 289
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$1;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    .line 297
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$2;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    .line 305
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$3;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    .line 314
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$4;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/CardEmulationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->updatePreferences()V

    return-void
.end method

.method private addItemPreference()V
    .locals 7

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, list:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 200
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 201
    .local v2, key:Ljava/lang/String;
    new-instance v5, Lcom/mediatek/nfc/SecurityItemPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mediatek/nfc/SecurityItemPreference;-><init>(Landroid/content/Context;)V

    .line 202
    .local v5, pref:Lcom/mediatek/nfc/SecurityItemPreference;
    invoke-virtual {v5, v2}, Lcom/mediatek/nfc/SecurityItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #len$:I
    .end local v5           #pref:Lcom/mediatek/nfc/SecurityItemPreference;
    :cond_0
    return-void
.end method

.method private getCardEmulationList()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nfc_multise_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, list:Ljava/lang/String;
    const-string v0, "[,]"

    .line 219
    .local v0, delims:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, tokens:[Ljava/lang/String;
    array-length v3, v5

    .line 221
    .local v3, length:I
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 222
    add-int/lit8 v6, v3, -0x1

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 223
    const-string v6, "CardEmulationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EMULATION_OFF is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    add-int/lit8 v6, v3, -0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 226
    .local v1, emulationList:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 227
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    .line 228
    aget-object v6, v5, v2

    aput-object v6, v1, v2

    .line 229
    const-string v6, "CardEmulationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "emulation list item is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v2           #i:I
    :cond_1
    return-object v1
.end method

.method private removeAll()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 138
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 139
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    return-void
.end method

.method private updatePreferences()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 148
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->removeAll()V

    .line 150
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "nfc_multise_active"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, activeMode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "nfc_multise_previous"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, previousMode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "nfc_multise_in_transation"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 153
    .local v5, transactionStatus:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "nfc_multise_in_switching"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 154
    .local v4, switchingStatus:I
    const-string v8, "CardEmulationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePreferences(), active mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " previous mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v8, "CardEmulationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePreferences, transactionStatus is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " switchingStatus is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 158
    iput-boolean v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 159
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 160
    iput-boolean v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 161
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_0

    .line 162
    const-string v8, "CardEmulationSettings"

    const-string v9, "no available security elment found and the active mode is off"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v9, 0x7f090169

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :goto_0
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    :goto_2
    return-void

    .line 165
    :cond_0
    if-nez v4, :cond_1

    .line 166
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v9, 0x7f09016a

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v9, 0x7f09016b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    move v6, v7

    .line 171
    goto :goto_1

    .line 173
    :cond_3
    iput-boolean v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 174
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 175
    iput-boolean v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 176
    if-ne v4, v6, :cond_4

    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 177
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v7, 0x7f09016c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 180
    :cond_4
    iget-object v9, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    move v8, v6

    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 181
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->addItemPreference()V

    .line 182
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 183
    .local v2, prefCount:I
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 185
    .local v1, itemPref:Lcom/mediatek/nfc/SecurityItemPreference;
    if-eqz v1, :cond_6

    .line 186
    invoke-virtual {v1, v6}, Lcom/mediatek/nfc/SecurityItemPreference;->setChecked(Z)Z

    .line 187
    iput-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActivePref:Lcom/mediatek/nfc/SecurityItemPreference;

    .line 191
    :goto_4
    iget-object v9, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    if-ne v4, v6, :cond_7

    move v8, v6

    :goto_5
    invoke-virtual {v9, v8}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 192
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    if-nez v5, :cond_8

    if-nez v4, :cond_8

    :goto_6
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_2

    .end local v1           #itemPref:Lcom/mediatek/nfc/SecurityItemPreference;
    .end local v2           #prefCount:I
    :cond_5
    move v8, v7

    .line 180
    goto :goto_3

    .line 189
    .restart local v1       #itemPref:Lcom/mediatek/nfc/SecurityItemPreference;
    .restart local v2       #prefCount:I
    :cond_6
    const-string v8, "CardEmulationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activie mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", can not find it on screen"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move v8, v7

    .line 191
    goto :goto_5

    :cond_8
    move v6, v7

    .line 192
    goto :goto_6
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 120
    const-string v1, "CardEmulationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, isChecked status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    if-eqz v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    if-nez p2, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    iget-object v3, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_previous"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, previousMode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    const-string v1, "CardEmulationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, set active mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v4, 0x7f06000b

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 82
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 83
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x207000b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 85
    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 86
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 87
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 92
    .local v2, padding:I
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f090167

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 106
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    const-string v4, "card_emulation_settings_category"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mediatek/nfc/CardEmulationProgressCategory;

    iput-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    .line 108
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 283
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 287
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 236
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/mediatek/nfc/SecurityItemPreference;

    if-eqz v4, :cond_0

    .line 237
    const-string v4, "CardEmulationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange, select "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nfc_multise_active"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v4, v2}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 240
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 241
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 242
    .local v1, pref:Lcom/mediatek/nfc/SecurityItemPreference;
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pref:Lcom/mediatek/nfc/SecurityItemPreference;
    :cond_0
    move v2, v3

    .line 246
    :cond_1
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 251
    if-eqz p2, :cond_0

    instance-of v6, p2, Lcom/mediatek/nfc/SecurityItemPreference;

    if-eqz v6, :cond_0

    .line 252
    const-string v6, "CardEmulationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nfc_multise_active"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, activeMode:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, prefKey:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nfc_multise_active"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v6, v4}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 258
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 259
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 260
    .local v2, pref:Lcom/mediatek/nfc/SecurityItemPreference;
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #activeMode:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pref:Lcom/mediatek/nfc/SecurityItemPreference;
    .end local v3           #prefKey:Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 265
    :cond_1
    return v4
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 270
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_list"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_in_transation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_in_switching"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->updatePreferences()V

    .line 279
    return-void
.end method
