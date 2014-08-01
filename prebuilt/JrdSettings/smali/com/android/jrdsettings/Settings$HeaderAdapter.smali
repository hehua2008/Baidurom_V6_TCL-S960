.class Lcom/android/jrdsettings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# static fields
.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field static final HEADER_TYPE_CHECK:I = 0x3

.field private static final HEADER_TYPE_COUNT:I = 0x4

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_SWITCH:I = 0x2


# instance fields
.field private SETTINGS_BLACK:[I

.field private SETTINGS_BLUE:[I

.field private SETTINGS_GREEN:[I

.field private SETTINGS_GRUOP_TITLE:[I

.field private SETTINGS_WHITE:[I

.field private mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

.field private mAuthHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private final mDlnaEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

.field private final mDlnaManager:Ljrdcom/dlnaservice/DLNAManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSimEnable:Z

.field private final mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/jrdsettings/accounts/AuthenticatorHelper;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/jrdsettings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .line 1033
    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    .line 915
    iput-boolean v1, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mIsSimEnable:Z

    .line 919
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_GRUOP_TITLE:[I

    .line 927
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_WHITE:[I

    .line 930
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_BLACK:[I

    .line 962
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_BLUE:[I

    .line 965
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_GREEN:[I

    .line 1035
    iput-object p1, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 1037
    iput-object p3, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    .line 1038
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1042
    new-instance v0, Lcom/android/jrdsettings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/jrdsettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    .line 1045
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    new-instance v0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    .line 1051
    :cond_0
    new-instance v0, Lcom/android/jrdsettings/dlna/DLNAEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/jrdsettings/dlna/DLNAEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mDlnaEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    .line 1052
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    const-string v1, "dlna"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrdcom/dlnaservice/DLNAManager;

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mDlnaManager:Ljrdcom/dlnaservice/DLNAManager;

    .line 1055
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    .line 1056
    return-void

    .line 919
    :array_0
    .array-data 0x4
        0xe1t 0x2t 0xbt 0x7ft
        0xebt 0x2t 0xbt 0x7ft
        0xf9t 0x2t 0xbt 0x7ft
        0xfet 0x2t 0xbt 0x7ft
        0x0t 0x3t 0xbt 0x7ft
    .end array-data

    .line 930
    :array_1
    .array-data 0x4
        0xe3t 0x2t 0xbt 0x7ft
        0xe6t 0x2t 0xbt 0x7ft
        0xe8t 0x2t 0xbt 0x7ft
        0xeat 0x2t 0xbt 0x7ft
        0xe2t 0x2t 0xbt 0x7ft
        0xeft 0x2t 0xbt 0x7ft
        0xf0t 0x2t 0xbt 0x7ft
        0xf4t 0x2t 0xbt 0x7ft
        0xf6t 0x2t 0xbt 0x7ft
        0xe0t 0x2t 0xbt 0x7ft
        0xf5t 0x2t 0xbt 0x7ft
        0xeet 0x2t 0xbt 0x7ft
        0xfat 0x2t 0xbt 0x7ft
        0xfbt 0x2t 0xbt 0x7ft
        0xfct 0x2t 0xbt 0x7ft
        0xf7t 0x2t 0xbt 0x7ft
        0xfdt 0x2t 0xbt 0x7ft
        0x1t 0x3t 0xbt 0x7ft
        0x6t 0x3t 0xbt 0x7ft
        0x3t 0x3t 0xbt 0x7ft
        0x2t 0x3t 0xbt 0x7ft
        0x4t 0x3t 0xbt 0x7ft
        0xfft 0x2t 0xbt 0x7ft
        0x5t 0x3t 0xbt 0x7ft
    .end array-data
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 5
    .parameter "header"

    .prologue
    const/4 v0, 0x1

    .line 984
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b0305

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v0

    .line 988
    :cond_1
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b0307

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 989
    const/4 v0, 0x3

    goto :goto_0

    .line 990
    :cond_2
    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 991
    const/4 v0, 0x0

    goto :goto_0

    .line 992
    :cond_3
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b02e3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b02e6

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b02e5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b02e4

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 998
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private handleDisableDlnaHolder(Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 4
    .parameter "holder"
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1273
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1285
    .local v0, isDlnaenable:Z
    :goto_0
    iget-object v2, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1288
    return-void

    .end local v0           #isDlnaenable:Z
    :cond_0
    move v0, v1

    .line 1273
    goto :goto_0
.end method

.method private handleDisableHolder(Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 2
    .parameter "holder"
    .parameter "view"

    .prologue
    .line 1354
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1356
    iget-object v1, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mIsSimEnable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1358
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1359
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1360
    iget-boolean v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mIsSimEnable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1361
    return-void

    .line 1356
    :cond_0
    const/16 v0, 0x4b

    goto :goto_0

    .line 1360
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleEnableDlnaHolder(Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 4
    .parameter "holder"
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1299
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 1324
    .local v0, isDlnaenable:Z
    :cond_0
    iget-object v2, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    if-eqz v2, :cond_1

    .line 1325
    iget-object v2, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1327
    :cond_1
    return-void
.end method

.method private handleEnableHolder(Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 3
    .parameter "holder"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 1336
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1339
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1342
    :cond_0
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1343
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1345
    :cond_1
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1346
    iget-object v0, p1, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1348
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1349
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1007
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1008
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1069
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    .line 1070
    .local v8, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v8}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v9

    .line 1071
    .local v9, headerType:I
    const/16 v16, 0x0

    .line 1073
    .local v16, view:Landroid/view/View;
    if-nez p2, :cond_4

    .line 1074
    new-instance v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/jrdsettings/Settings$1;)V

    .line 1075
    .local v10, holder:Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v9, :pswitch_data_0

    .line 1127
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1134
    :goto_1
    packed-switch v9, :pswitch_data_1

    .line 1212
    :goto_2
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02e2

    cmp-long v17, v17, v19

    if-nez v17, :cond_e

    .line 1214
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/jrdsettings/Settings;->access$500()Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f090087

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    invoke-interface/range {v18 .. v20}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->handleDisableHolder(Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    .line 1222
    :goto_3
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02e5

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 1224
    .local v6, cm:Landroid/net/ConnectivityManager;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    .line 1225
    .local v14, network:Landroid/net/NetworkInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "dlna_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1227
    .local v7, currentDLNAState:I
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_f

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    if-nez v7, :cond_f

    .line 1230
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->handleEnableDlnaHolder(Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    .line 1238
    .end local v6           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #currentDLNAState:I
    .end local v14           #network:Landroid/net/NetworkInfo;
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_WHITE:[I

    move-object/from16 v17, v0

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1239
    const v17, 0x7f0d0018

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1268
    :cond_2
    :goto_5
    return-object v16

    .line 1081
    :pswitch_0
    invoke-static {}, Lcom/android/jrdsettings/Settings;->access$400()Z

    move-result v17

    if-nez v17, :cond_3

    .line 1082
    new-instance v16, Landroid/widget/TextView;

    .end local v16           #view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const v19, 0x1010208

    invoke-direct/range {v16 .. v19}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v16       #view:Landroid/view/View;
    move-object/from16 v17, v16

    .line 1084
    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1086
    :cond_3
    new-instance v16, Landroid/widget/TextView;

    .end local v16           #view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v16       #view:Landroid/view/View;
    move-object/from16 v17, v16

    .line 1087
    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1088
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1e

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_0

    .line 1094
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040094

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1096
    const v17, 0x7f0b003d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1097
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1099
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1101
    const v17, 0x7f0b0166

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1105
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040093

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1108
    const v17, 0x7f0b003d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1109
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1111
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1116
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040092

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1118
    const v17, 0x7f0b003d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1119
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1121
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1123
    const v17, 0x7f0b0165

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->check:Landroid/widget/CheckBox;

    goto/16 :goto_0

    .line 1129
    .end local v10           #holder:Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_4
    move-object/from16 v16, p2

    .line 1130
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v10       #holder:Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1138
    :pswitch_4
    invoke-static {}, Lcom/android/jrdsettings/Settings;->access$400()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1139
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1141
    :cond_5
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1148
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "ipo_setting"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/4 v12, 0x1

    .line 1150
    .local v12, isQuickBootEnabled:Z
    :goto_6
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->check:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1151
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->check:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1152
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    iget v0, v8, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1153
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1155
    .local v5, checkSummary:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 1156
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1148
    .end local v5           #checkSummary:Ljava/lang/CharSequence;
    .end local v12           #isQuickBootEnabled:Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    .line 1159
    .restart local v5       #checkSummary:Ljava/lang/CharSequence;
    .restart local v12       #isQuickBootEnabled:Z
    :cond_7
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1166
    .end local v5           #checkSummary:Ljava/lang/CharSequence;
    .end local v12           #isQuickBootEnabled:Z
    :pswitch_6
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02e3

    cmp-long v17, v17, v19

    if-nez v17, :cond_9

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/jrdsettings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1187
    :cond_8
    :goto_7
    :pswitch_7
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1189
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1191
    .local v4, accType:Ljava/lang/String;
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 1192
    .local v13, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08001b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1194
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1195
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1197
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1201
    .end local v4           #accType:Ljava/lang/String;
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_8
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1203
    .local v15, summary:Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 1204
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1169
    .end local v15           #summary:Ljava/lang/CharSequence;
    :cond_9
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02e6

    cmp-long v17, v17, v19

    if-nez v17, :cond_a

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1171
    :cond_a
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02e4

    cmp-long v17, v17, v19

    if-nez v17, :cond_b

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1177
    :cond_b
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02e5

    cmp-long v17, v17, v19

    if-nez v17, :cond_8

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mDlnaEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1199
    :cond_c
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    iget v0, v8, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 1207
    .restart local v15       #summary:Ljava/lang/CharSequence;
    :cond_d
    iget-object v0, v10, Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1218
    .end local v15           #summary:Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->handleEnableHolder(Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    goto/16 :goto_3

    .line 1232
    .restart local v6       #cm:Landroid/net/ConnectivityManager;
    .restart local v7       #currentDLNAState:I
    .restart local v14       #network:Landroid/net/NetworkInfo;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->handleDisableDlnaHolder(Lcom/android/jrdsettings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    goto/16 :goto_4

    .line 1240
    .end local v6           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #currentDLNAState:I
    .end local v14           #network:Landroid/net/NetworkInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_BLACK:[I

    move-object/from16 v17, v0

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 1241
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02e2

    cmp-long v17, v17, v19

    if-eqz v17, :cond_11

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02fa

    cmp-long v17, v17, v19

    if-eqz v17, :cond_11

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0301

    cmp-long v17, v17, v19

    if-nez v17, :cond_12

    .line 1244
    :cond_11
    const v17, 0x7f0200c7

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1246
    :cond_12
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02ea

    cmp-long v17, v17, v19

    if-eqz v17, :cond_13

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02f6

    cmp-long v17, v17, v19

    if-eqz v17, :cond_13

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02fd

    cmp-long v17, v17, v19

    if-eqz v17, :cond_13

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02ff

    cmp-long v17, v17, v19

    if-nez v17, :cond_14

    .line 1249
    :cond_13
    const v17, 0x7f0200c5

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1252
    :cond_14
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b02ff

    cmp-long v17, v17, v19

    if-nez v17, :cond_15

    .line 1253
    const v17, 0x7f0200c4

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1256
    :cond_15
    const v17, 0x7f0200c6

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1259
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_BLUE:[I

    move-object/from16 v17, v0

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 1260
    const v17, -0x777778

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 1261
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_GREEN:[I

    move-object/from16 v17, v0

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 1262
    const v17, -0x333334

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 1263
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->SETTINGS_GRUOP_TITLE:[I

    move-object/from16 v17, v0

    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1264
    const v17, 0x7f0200c6

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1075
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1134
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1023
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x1

    return v0
.end method

.method public isAudioShareEnable()Z
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimManagementAvailable(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1364
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enable_internet_call_value"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1367
    .local v1, isInternetCallEnabled:I
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isInternetCallEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-static {p1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    .line 1370
    .local v2, isVoipSupported:Z
    :goto_0
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 1371
    .local v0, isHasSimCards:Z
    :goto_1
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isVoipSupported = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isHasSimCards = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mIsSimEnable:Z

    .line 1374
    return-void

    .end local v0           #isHasSimCards:Z
    .end local v2           #isVoipSupported:Z
    :cond_2
    move v2, v4

    .line 1368
    goto :goto_0

    .restart local v2       #isVoipSupported:Z
    :cond_3
    move v0, v4

    .line 1370
    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ipo_setting"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1063
    return-void

    .line 1061
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiEnabler;->pause()V

    .line 1390
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->pause()V

    .line 1392
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mDlnaEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->pause()V

    .line 1395
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->pause()V

    .line 1399
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiEnabler;->resume()V

    .line 1377
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->resume()V

    .line 1380
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->resume()V

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$HeaderAdapter;->mDlnaEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->resume()V

    .line 1386
    return-void
.end method
