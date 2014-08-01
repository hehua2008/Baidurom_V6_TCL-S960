.class public Lcom/android/jrdsettings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final BEGIN_INDEX:I = 0x0

.field private static final FILE_DISABLE_APPS_LIST:Ljava/lang/String; = "/system/etc/disableapplist.txt"

.field private static final INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field private static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.jrdsettings.icon"

.field private static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.jrdsettings.summary"

.field private static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.jrdsettings.title"

.field private static final SEPARATOR_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Utils"

.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1

.field public static disableAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/Utils;->mList:Ljava/util/ArrayList;

    .line 706
    const-string v0, "/system/etc/disableapplist.txt"

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->readFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/Utils;->disableAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"
    .parameter "titleResId"
    .parameter "positiveAction"

    .prologue
    .line 666
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 667
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 668
    const v1, 0x7f0908ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 669
    const v1, 0x104000a

    new-instance v2, Lcom/android/jrdsettings/Utils$1;

    invoke-direct {v2, p2}, Lcom/android/jrdsettings/Utils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .parameter "context"
    .parameter "user"

    .prologue
    const/4 v5, 0x1

    .line 566
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 567
    .local v1, contactUri:Landroid/net/Uri;
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 568
    .local v3, um:Landroid/os/UserManager;
    if-eqz p1, :cond_0

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 570
    .local v4, userId:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 575
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 577
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 578
    const/4 v5, 0x0

    .line 586
    :goto_1
    return v5

    .line 568
    .end local v0           #avatarDataStream:Ljava/io/InputStream;
    .end local v4           #userId:I
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_0

    .line 581
    .restart local v0       #avatarDataStream:Ljava/io/InputStream;
    .restart local v4       #userId:I
    :cond_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 582
    .local v2, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 584
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 585
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .parameter "localeStr"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 452
    if-nez p0, :cond_0

    .line 453
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 461
    :goto_0
    return-object v1

    .line 454
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, brokenDownLocale:[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 457
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 459
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .parameter "parent"
    .parameter "child"
    .parameter "list"
    .parameter "ignoreSidePadding"

    .prologue
    .line 505
    const/high16 v0, 0x200

    invoke-virtual {p2, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 507
    invoke-static {p0, p1, p2, p3}, Lcom/android/jrdsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 508
    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    const/4 v0, 0x0

    .line 432
    if-nez p0, :cond_1

    .line 442
    :cond_0
    return-object v0

    .line 433
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 435
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    const-string v0, ""

    .line 438
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 843
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IApnSettingsExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .local v1, ext:Lcom/mediatek/settings/ext/IApnSettingsExt;
    :goto_0
    return-object v1

    .line 845
    .end local v1           #ext:Lcom/mediatek/settings/ext/IApnSettingsExt;
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/IApnSettingsExt;
    goto :goto_0
.end method

.method public static getAudioProfilePlgin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 758
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IAudioProfileExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .local v1, mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;
    :goto_0
    return-object v1

    .line 760
    .end local v1           #mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v2, "Utils"

    const-string v3, "Plugin ObjectCreationException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v1, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;-><init>(Landroid/content/Context;)V

    .restart local v1       #mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;
    goto :goto_0
.end method

.method public static getBatteryExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IBatteryExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 1049
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IBatteryExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IBatteryExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .local v1, ext:Lcom/mediatek/settings/ext/IBatteryExt;
    :goto_0
    return-object v1

    .line 1051
    .end local v1           #ext:Lcom/mediatek/settings/ext/IBatteryExt;
    :catch_0
    move-exception v0

    .line 1052
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v2, "Utils"

    const-string v3, "Enter the default IBatteryExt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v1, Lcom/mediatek/settings/ext/DefaultBatteryExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultBatteryExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/IBatteryExt;
    goto :goto_0
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "batteryChangedIntent"

    .prologue
    .line 466
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 467
    .local v0, level:I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 468
    .local v1, scale:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .parameter "res"
    .parameter "batteryChangedIntent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 472
    move-object v0, p1

    .line 474
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 475
    .local v1, plugType:I
    const-string v5, "status"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 477
    .local v3, status:I
    if-ne v3, v8, :cond_3

    .line 478
    const v5, 0x7f090277

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, statusString:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 481
    if-ne v1, v7, :cond_1

    .line 482
    const v2, 0x7f090278

    .line 488
    .local v2, resId:I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 500
    .end local v2           #resId:I
    :cond_0
    :goto_1
    return-object v4

    .line 483
    :cond_1
    if-ne v1, v8, :cond_2

    .line 484
    const v2, 0x7f090279

    .restart local v2       #resId:I
    goto :goto_0

    .line 486
    .end local v2           #resId:I
    :cond_2
    const v2, 0x7f09027a

    .restart local v2       #resId:I
    goto :goto_0

    .line 490
    .end local v2           #resId:I
    .end local v4           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 491
    const v5, 0x7f09027b

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 492
    .end local v4           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    .line 493
    const v5, 0x7f09027c

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 494
    .end local v4           #statusString:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 495
    const v5, 0x7f09027d

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 497
    .end local v4           #statusString:Ljava/lang/String;
    :cond_6
    const v5, 0x7f090276

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getDataUsageSummaryPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    .locals 5
    .parameter "context"

    .prologue
    .line 791
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .local v1, ext:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    :goto_0
    return-object v1

    .line 793
    .end local v1           #ext:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    :catch_0
    move-exception v0

    .line 794
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;-><init>(Landroid/content/Context;)V

    .line 795
    .restart local v1       #ext:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plugin ObjectCreationException e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDateTimeSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDateTimeSettingsExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 1033
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IDateTimeSettingsExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IDateTimeSettingsExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    .local v1, ext:Lcom/mediatek/settings/ext/IDateTimeSettingsExt;
    :goto_0
    return-object v1

    .line 1035
    .end local v1           #ext:Lcom/mediatek/settings/ext/IDateTimeSettingsExt;
    :catch_0
    move-exception v0

    .line 1036
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultDateTimeSettingsExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultDateTimeSettingsExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/IDateTimeSettingsExt;
    goto :goto_0
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 425
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 427
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 428
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/jrdsettings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDeviceInfoSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 874
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .local v1, ext:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    :goto_0
    return-object v1

    .line 876
    .end local v1           #ext:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    :catch_0
    move-exception v0

    .line 877
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultDeviceInfoSettingsExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultDeviceInfoSettingsExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    goto :goto_0
.end method

.method public static getFactoryPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IFactoryExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 1066
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IFactoryExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IFactoryExt;

    .line 1068
    .local v1, ext:Lcom/mediatek/settings/ext/IFactoryExt;
    const-string v2, "Utils"

    const-string v3, "Plugin object created"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_0
    return-object v1

    .line 1069
    .end local v1           #ext:Lcom/mediatek/settings/ext/IFactoryExt;
    :catch_0
    move-exception v0

    .line 1070
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultFactoryExt;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/ext/DefaultFactoryExt;-><init>(Landroid/content/Context;)V

    .line 1071
    .restart local v1       #ext:Lcom/mediatek/settings/ext/IFactoryExt;
    const-string v2, "Utils"

    const-string v3, "Plugin ObjectCreationException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIRoamingNotmacooCtwapPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRoamingNotmacooCtwapExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 1084
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IRoamingNotmacooCtwapExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IRoamingNotmacooCtwapExt;

    .line 1086
    .local v1, ext:Lcom/mediatek/settings/ext/IRoamingNotmacooCtwapExt;
    const-string v2, "Utils"

    const-string v3, "Plugin object created"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :goto_0
    return-object v1

    .line 1087
    .end local v1           #ext:Lcom/mediatek/settings/ext/IRoamingNotmacooCtwapExt;
    :catch_0
    move-exception v0

    .line 1088
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultRoamingNotmacooCtwap;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultRoamingNotmacooCtwap;-><init>()V

    .line 1089
    .restart local v1       #ext:Lcom/mediatek/settings/ext/IRoamingNotmacooCtwapExt;
    const-string v2, "Utils"

    const-string v3, "Plugin ObjectCreationException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 607
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 613
    .local v6, localRawProfile:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-object v4

    .line 616
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 621
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 619
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 621
    .local v7, localRowProfileId:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 625
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v11

    const-string v3, "data3"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 631
    .local v10, structuredName:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 634
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 643
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 621
    .end local v7           #localRowProfileId:J
    .end local v10           #structuredName:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 637
    .restart local v7       #localRowProfileId:J
    .restart local v10       #structuredName:Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 638
    .local v9, partialName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 639
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    .line 643
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    goto :goto_0

    .end local v9           #partialName:Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "full"

    .prologue
    .line 590
    if-eqz p1, :cond_0

    .line 591
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 774
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/ISettingsMiscExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .local v1, ext:Lcom/mediatek/settings/ext/ISettingsMiscExt;
    :goto_0
    return-object v1

    .line 776
    .end local v1           #ext:Lcom/mediatek/settings/ext/ISettingsMiscExt;
    :catch_0
    move-exception v0

    .line 778
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;-><init>(Landroid/content/Context;)V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/ISettingsMiscExt;
    goto :goto_0
.end method

.method public static getPermControlExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IPermissionControlExt;
    .locals 5
    .parameter "context"

    .prologue
    .line 983
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IPermissionControlExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IPermissionControlExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .local v1, ext:Lcom/mediatek/settings/ext/IPermissionControlExt;
    :goto_0
    return-object v1

    .line 985
    .end local v1           #ext:Lcom/mediatek/settings/ext/IPermissionControlExt;
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter the default IPermissionControlExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    new-instance v1, Lcom/mediatek/settings/ext/DefaultPermissionControlExt;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/ext/DefaultPermissionControlExt;-><init>(Landroid/content/Context;)V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/IPermissionControlExt;
    goto :goto_0
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 649
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 651
    .local v6, profile:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 659
    :goto_0
    return-object v3

    .line 654
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 657
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getRcseApnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 945
    const/4 v3, 0x0

    .line 946
    .local v3, ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    const-class v6, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Landroid/content/pm/Signature;

    invoke-static {p0, v6, v7}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v5

    .line 949
    .local v5, pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;>;"
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current plug-in counts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :try_start_0
    invoke-virtual {v5}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 952
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v1

    .line 953
    .local v1, apnPlugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;>;"
    if-eqz v1, :cond_0

    .line 954
    invoke-virtual {v1}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    move-object v3, v0

    .line 964
    .end local v1           #apnPlugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 957
    :cond_1
    new-instance v4, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;

    invoke-direct {v4}, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;-><init>()V
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    .end local v3           #ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    .local v4, ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    :try_start_1
    const-string v6, "Utils"

    const-string v7, "Enter the default DefaultRcseOnlyApnExt"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v4           #ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    .restart local v3       #ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    goto :goto_0

    .line 960
    :catch_0
    move-exception v2

    .line 961
    .local v2, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :goto_1
    new-instance v3, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;

    .end local v3           #ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    invoke-direct {v3}, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;-><init>()V

    .line 962
    .restart local v3       #ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    const-string v6, "Utils"

    const-string v7, "Enter the default DefaultRcseOnlyApnExt"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    .end local v2           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    .end local v3           #ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    .restart local v4       #ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    .restart local v3       #ext:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;
    goto :goto_1
.end method

.method public static getReplaceApnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IReplaceApnProfileExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 970
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IReplaceApnProfileExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IReplaceApnProfileExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    .local v1, ext:Lcom/mediatek/settings/ext/IReplaceApnProfileExt;
    :goto_0
    return-object v1

    .line 972
    .end local v1           #ext:Lcom/mediatek/settings/ext/IReplaceApnProfileExt;
    :catch_0
    move-exception v0

    .line 973
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v2, "Utils"

    const-string v3, "Enter the default DefaultReplaceApnProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    new-instance v1, Lcom/mediatek/settings/ext/DefaultReplaceApnProfile;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultReplaceApnProfile;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/IReplaceApnProfileExt;
    goto :goto_0
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 598
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, given:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0           #given:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #given:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 919
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/ISimManagementExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    .local v1, ext:Lcom/mediatek/settings/ext/ISimManagementExt;
    :goto_0
    return-object v1

    .line 921
    .end local v1           #ext:Lcom/mediatek/settings/ext/ISimManagementExt;
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v2, "Utils"

    const-string v3, "Enter the default ISimManagementExt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v1, Lcom/mediatek/settings/ext/DefaultSimManagementExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultSimManagementExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/ISimManagementExt;
    goto :goto_0
.end method

.method public static getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 935
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/ISimRoamingExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/ISimRoamingExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    .local v1, ext:Lcom/mediatek/settings/ext/ISimRoamingExt;
    :goto_0
    return-object v1

    .line 937
    .end local v1           #ext:Lcom/mediatek/settings/ext/ISimRoamingExt;
    :catch_0
    move-exception v0

    .line 938
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v2, "Utils"

    const-string v3, "Enter the default ISimRoamingExt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    new-instance v1, Lcom/mediatek/settings/ext/DefaultSimRoamingExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultSimRoamingExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/ISimRoamingExt;
    goto :goto_0
.end method

.method public static getStatusExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 904
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IStatusExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IStatusExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .local v1, ext:Lcom/mediatek/settings/ext/IStatusExt;
    :goto_0
    return-object v1

    .line 906
    .end local v1           #ext:Lcom/mediatek/settings/ext/IStatusExt;
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultStatusExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultStatusExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/IStatusExt;
    goto :goto_0
.end method

.method public static getStatusGeminiExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusGeminiExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 889
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IStatusGeminiExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IStatusGeminiExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .local v1, ext:Lcom/mediatek/settings/ext/IStatusGeminiExt;
    :goto_0
    return-object v1

    .line 891
    .end local v1           #ext:Lcom/mediatek/settings/ext/IStatusGeminiExt;
    :catch_0
    move-exception v0

    .line 892
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultStatusGeminiExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultStatusGeminiExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/IStatusGeminiExt;
    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .parameter "cm"

    .prologue
    const v8, 0x7f0905aa

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 538
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, usbRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, bluetoothRegexs:[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 543
    .local v2, usbAvailable:Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 544
    .local v4, wifiAvailable:Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 546
    .local v0, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 559
    :goto_3
    return v6

    .end local v0           #bluetoothAvailable:Z
    .end local v2           #usbAvailable:Z
    .end local v4           #wifiAvailable:Z
    :cond_0
    move v2, v7

    .line 542
    goto :goto_0

    .restart local v2       #usbAvailable:Z
    :cond_1
    move v4, v7

    .line 543
    goto :goto_1

    .restart local v4       #wifiAvailable:Z
    :cond_2
    move v0, v7

    .line 544
    goto :goto_2

    .line 548
    .restart local v0       #bluetoothAvailable:Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 549
    goto :goto_3

    .line 550
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 551
    goto :goto_3

    .line 552
    :cond_5
    if-eqz v4, :cond_6

    .line 553
    const v6, 0x7f0905a7

    goto :goto_3

    .line 554
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 555
    const v6, 0x7f0905a9

    goto :goto_3

    .line 556
    :cond_7
    if-eqz v2, :cond_8

    .line 557
    const v6, 0x7f0905a6

    goto :goto_3

    .line 559
    :cond_8
    const v6, 0x7f0905a8

    goto :goto_3
.end method

.method public static getWifiApDialogPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiApDialogExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 859
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IWifiApDialogExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IWifiApDialogExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .local v1, ext:Lcom/mediatek/settings/ext/IWifiApDialogExt;
    :goto_0
    return-object v1

    .line 861
    .end local v1           #ext:Lcom/mediatek/settings/ext/IWifiApDialogExt;
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;-><init>()V

    .restart local v1       #ext:Lcom/mediatek/settings/ext/IWifiApDialogExt;
    goto :goto_0
.end method

.method public static getWifiIpAddresses()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 375
    const/4 v5, 0x0

    .line 376
    .local v5, wifiNetwork:Ljava/net/NetworkInterface;
    const-string v0, ""

    .line 378
    .local v0, addresses:Ljava/lang/String;
    :try_start_0
    const-string v7, "wlan0"

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 383
    if-nez v5, :cond_0

    .line 384
    const-string v7, "Utils"

    const-string v8, "wifiNetwork is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    return-object v6

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v1           #e:Ljava/net/SocketException;
    :cond_0
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 388
    .local v2, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-nez v2, :cond_1

    .line 389
    const-string v7, "Utils"

    const-string v8, "enumeration is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 393
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 394
    .local v4, inet:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, hostAddress:Ljava/lang/String;
    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 396
    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 398
    :cond_2
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InetAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hostAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    instance-of v6, v4, Ljava/net/Inet6Address;

    if-eqz v6, :cond_3

    .line 401
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IPV6 address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 403
    :cond_3
    instance-of v6, v4, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 404
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IPV4 address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 408
    .end local v3           #hostAddress:Ljava/lang/String;
    .end local v4           #inet:Ljava/net/InetAddress;
    :cond_4
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IP addresses = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v6, ""

    if-eq v0, v6, :cond_7

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "; "

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 410
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 414
    :cond_6
    :goto_2
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The result of IP addresses = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    .line 415
    goto/16 :goto_0

    .line 411
    :cond_7
    const-string v6, ""

    if-ne v0, v6, :cond_6

    .line 412
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 364
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 366
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 367
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/jrdsettings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 809
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IWifiExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IWifiExt;

    .line 811
    .local v1, ext:Lcom/mediatek/settings/ext/IWifiExt;
    const-string v2, "Utils"

    const-string v3, "Plugin object created"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    return-object v1

    .line 812
    .end local v1           #ext:Lcom/mediatek/settings/ext/IWifiExt;
    :catch_0
    move-exception v0

    .line 813
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultWifiExt;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/ext/DefaultWifiExt;-><init>(Landroid/content/Context;)V

    .line 814
    .restart local v1       #ext:Lcom/mediatek/settings/ext/IWifiExt;
    const-string v2, "Utils"

    const-string v3, "Plugin ObjectCreationException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWifiSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiSettingsExt;
    .locals 4
    .parameter "context"

    .prologue
    .line 826
    :try_start_0
    const-class v2, Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/IWifiSettingsExt;

    .line 828
    .local v1, ext:Lcom/mediatek/settings/ext/IWifiSettingsExt;
    const-string v2, "Utils"

    const-string v3, "Plugin object created"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    return-object v1

    .line 829
    .end local v1           #ext:Lcom/mediatek/settings/ext/IWifiSettingsExt;
    :catch_0
    move-exception v0

    .line 830
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;-><init>()V

    .line 831
    .restart local v1       #ext:Lcom/mediatek/settings/ext/IWifiSettingsExt;
    const-string v2, "Utils"

    const-string v3, "Plugin ObjectCreationException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 681
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExSdcardInserted()Z
    .locals 4

    .prologue
    .line 1020
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getSdSwapState()Z

    move-result v0

    .line 1021
    .local v0, isExSdcardInserted:Z
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExSdcardInserted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return v0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    .line 694
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return v1

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSomeStorageEmulated()Z
    .locals 6

    .prologue
    .line 999
    const/4 v1, 0x0

    .line 1001
    .local v1, isExistEmulatedStorage:Z
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1003
    .local v2, mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    .line 1004
    invoke-interface {v2}, Landroid/os/storage/IMountService;->isExternalStorageEmulated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1011
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExistEmulatedStorage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return v1

    .line 1006
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :try_start_1
    const-string v3, "Utils"

    const-string v4, "MountService return null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1008
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 1009
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Utils"

    const-string v4, "RemoteException happens, couldn\'t talk to MountService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 343
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 345
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 353
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 355
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .parameter "parent"
    .parameter "child"
    .parameter "list"
    .parameter "ignoreSidePadding"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 517
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x200

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 518
    .local v1, movePadding:Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 521
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 522
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x1050029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 524
    .local v3, paddingSide:I
    const v5, 0x1050028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 527
    .local v2, paddingBottom:I
    if-eqz p3, :cond_2

    move v0, v6

    .line 528
    .local v0, effectivePaddingSide:I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 530
    .end local v0           #effectivePaddingSide:I
    .end local v2           #paddingBottom:I
    .end local v3           #paddingSide:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .end local v1           #movePadding:Z
    :cond_1
    move v1, v6

    .line 517
    goto :goto_0

    .restart local v1       #movePadding:Z
    .restart local v2       #paddingBottom:I
    .restart local v3       #paddingSide:I
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 527
    goto :goto_1
.end method

.method public static readFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 714
    sget-object v8, Lcom/android/jrdsettings/Utils;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 715
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 717
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 719
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 720
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 725
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 727
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 728
    const-string v8, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " read line "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    sget-object v8, Lcom/android/jrdsettings/Utils;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 732
    .end local v6           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 733
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .local v5, io:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v8, "Utils"

    const-string v9, "IOException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 737
    if-eqz v0, :cond_0

    .line 738
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 740
    :cond_0
    if-eqz v3, :cond_1

    .line 741
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 747
    .end local v5           #io:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v7

    .line 722
    :cond_2
    :try_start_5
    const-string v8, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not exist!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 737
    if-eqz v0, :cond_3

    .line 738
    :try_start_6
    throw v0

    .line 740
    :cond_3
    if-eqz v3, :cond_1

    .line 741
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 743
    :catch_1
    move-exception v5

    .line 744
    .restart local v5       #io:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 731
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v5           #io:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v6       #line:Ljava/lang/String;
    :cond_4
    :try_start_7
    sget-object v7, Lcom/android/jrdsettings/Utils;->mList:Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 737
    if-eqz v1, :cond_5

    .line 738
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 740
    :cond_5
    if-eqz v4, :cond_6

    .line 741
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_3
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 745
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 743
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_2
    move-exception v5

    .line 744
    .restart local v5       #io:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 743
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v6           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catch_3
    move-exception v5

    .line 744
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 736
    .end local v5           #io:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 737
    :goto_4
    if-eqz v0, :cond_7

    .line 738
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 740
    :cond_7
    if-eqz v3, :cond_8

    .line 741
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 745
    :cond_8
    :goto_5
    throw v7

    .line 743
    :catch_4
    move-exception v5

    .line 744
    .restart local v5       #io:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 736
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v5           #io:Ljava/io/IOException;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_4

    .line 732
    :catch_5
    move-exception v5

    goto :goto_1

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 15
    .parameter "context"
    .parameter
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/preference/PreferenceActivity$Header;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 274
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 277
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v12, 0x80

    invoke-virtual {v7, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 278
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 279
    .local v5, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 280
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 281
    .local v9, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .line 285
    .local v11, title:Ljava/lang/String;
    const/4 v10, 0x0

    .line 289
    .local v10, summary:Ljava/lang/String;
    :try_start_0
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 291
    .local v8, res:Landroid/content/res/Resources;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 293
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 294
    const-string v12, "com.android.jrdsettings.icon"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 295
    const-string v12, "com.android.jrdsettings.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 296
    const-string v12, "com.android.jrdsettings.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 306
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 307
    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 313
    :cond_1
    move-object/from16 v0, p2

    iput-object v11, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 314
    move-object/from16 v0, p2

    iput-object v10, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 316
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 319
    const/4 v12, 0x1

    .line 327
    .end local v1           #i:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v10           #summary:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :goto_2
    return v12

    .line 279
    .restart local v1       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v1           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 327
    const/4 v12, 0x0

    goto :goto_2

    .line 300
    .restart local v1       #i:I
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v10       #summary:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 298
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public static updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 16
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"

    .prologue
    .line 206
    invoke-virtual/range {p1 .. p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/jrdsettings/IconPreferenceScreen;

    .line 208
    .local v8, preference:Lcom/android/jrdsettings/IconPreferenceScreen;
    if-nez v8, :cond_0

    .line 209
    const/4 v13, 0x0

    .line 267
    :goto_0
    return v13

    .line 212
    :cond_0
    invoke-virtual {v8}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 213
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 216
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v13, 0x80

    invoke-virtual {v7, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 217
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 218
    .local v5, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 219
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 220
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 224
    .local v12, title:Ljava/lang/String;
    const/4 v11, 0x0

    .line 228
    .local v11, summary:Ljava/lang/String;
    :try_start_0
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 230
    .local v9, res:Landroid/content/res/Resources;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v13, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 232
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 233
    const-string v13, "com.android.jrdsettings.icon"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 234
    const-string v13, "com.android.jrdsettings.title"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 235
    const-string v13, "com.android.jrdsettings.summary"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 245
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 246
    invoke-virtual {v10, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 250
    :cond_2
    invoke-virtual {v8, v2}, Lcom/android/jrdsettings/IconPreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 251
    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 259
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 218
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #summary:Ljava/lang/String;
    .end local v12           #title:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 265
    .end local v1           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 267
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 239
    .restart local v1       #i:I
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v11       #summary:Ljava/lang/String;
    .restart local v12       #title:Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_2

    .line 237
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 145
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 146
    .local v5, preference:Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 179
    :goto_0
    return v7

    .line 150
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 151
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 154
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 156
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 157
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 158
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 162
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 166
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 168
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 156
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
