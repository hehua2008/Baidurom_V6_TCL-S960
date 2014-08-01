.class public final Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDevicePreference"

.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/high16 v0, -0x8000

    sput v0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 61
    sget v1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 62
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 63
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 64
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 67
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    .line 69
    invoke-virtual {p2}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 70
    const v1, 0x7f040084

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 8

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    const v5, 0x7f0902a8

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 196
    :cond_0
    const v5, 0x7f09029c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, message:Ljava/lang/String;
    const v5, 0x7f09029b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V

    .line 205
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/jrdsettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 207
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 278
    iget-object v7, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 279
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    .line 281
    .local v2, mClass:I
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 296
    const-string v7, "BluetoothDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unrecognized device class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v2           #mClass:I
    :goto_0
    iget-object v7, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v4

    .line 303
    .local v4, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    .line 304
    .local v3, profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v3, v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v5

    .line 305
    .local v5, resId:I
    if-eqz v5, :cond_0

    .line 318
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    .end local v4           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;>;"
    .end local v5           #resId:I
    :goto_1
    return v5

    .line 283
    .restart local v2       #mClass:I
    :sswitch_0
    const v5, 0x7f020098

    goto :goto_1

    .line 286
    :sswitch_1
    const v5, 0x7f020091

    goto :goto_1

    .line 289
    :sswitch_2
    invoke-static {v0}, Lcom/android/jrdsettings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v5

    goto :goto_1

    .line 292
    :sswitch_3
    const v5, 0x7f020096

    goto :goto_1

    .line 299
    .end local v2           #mClass:I
    :cond_1
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "mBtClass is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 310
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 311
    const v5, 0x7f020094

    goto :goto_1

    .line 314
    :cond_3
    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 315
    const v5, 0x7f020095

    goto :goto_1

    :cond_4
    move v5, v6

    .line 318
    goto :goto_1

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 10

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    .line 219
    .local v1, cachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    const-string v7, "BluetoothDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getConnectionSummary"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v6, 0x0

    .line 222
    .local v6, profileConnected:Z
    const/4 v0, 0x0

    .line 223
    .local v0, a2dpNotConnected:Z
    const/4 v3, 0x0

    .line 225
    .local v3, headsetNotConnected:Z
    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    .line 226
    .local v5, profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v5}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 227
    .local v2, connectionStatus:I
    if-eqz v5, :cond_1

    .line 228
    const-string v7, "BluetoothDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profile name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    invoke-interface {v5}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    instance-of v7, v5, Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    if-eqz v7, :cond_2

    .line 243
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "a2dpNotConnected = true"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-static {v2}, Lcom/android/jrdsettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v7

    .line 273
    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v7

    .line 236
    .restart local v2       #connectionStatus:I
    .restart local v5       #profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    :pswitch_2
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "profileConnected = true"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v6, 0x1

    .line 238
    goto :goto_0

    .line 245
    :cond_2
    instance-of v7, v5, Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    if-eqz v7, :cond_0

    .line 246
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "headsetNotConnected = true"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v3, 0x1

    goto :goto_0

    .line 254
    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    :cond_3
    if-eqz v6, :cond_7

    .line 255
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 256
    const v7, 0x7f0902a2

    goto :goto_1

    .line 257
    :cond_4
    if-eqz v0, :cond_5

    .line 258
    const v7, 0x7f0902a1

    goto :goto_1

    .line 259
    :cond_5
    if-eqz v3, :cond_6

    .line 260
    const v7, 0x7f0902a0

    goto :goto_1

    .line 262
    :cond_6
    const v7, 0x7f09029f

    goto :goto_1

    .line 266
    :cond_7
    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 273
    const/4 v7, 0x0

    goto :goto_1

    .line 268
    :pswitch_3
    const v7, 0x7f0902a7

    goto :goto_1

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method

.method private pair()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0903af

    invoke-static {v0, v1, v2}, Lcom/android/jrdsettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 167
    instance-of v0, p1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 169
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 172
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 153
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 156
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 128
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 133
    const v1, 0x7f0b000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .local v0, deviceDetails:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 141
    .end local v0           #deviceDetails:Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 142
    return-void

    .line 137
    .restart local v0       #deviceDetails:Landroid/widget/ImageView;
    :cond_2
    sget v1, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 149
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 4

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 179
    .local v0, bondState:I
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 182
    const-string v1, "BluetoothDevicePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 184
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 107
    .local v1, summaryResId:I
    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 114
    .local v0, iconResId:I
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 123
    return-void

    .line 110
    .end local v0           #iconResId:I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    .restart local v0       #iconResId:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 89
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "onPrepareForRemoval"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 91
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "dismiss dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 96
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 84
    return-void
.end method
