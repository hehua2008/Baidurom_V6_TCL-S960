.class public Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field private static final EXTRA_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2384
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/jrdsettings/DataUsageSummary;)V
    .locals 14
    .parameter "parent"

    .prologue
    .line 2389
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2440
    :goto_0
    return-void

    .line 2391
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 2393
    .local v10, res:Landroid/content/res/Resources;
    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/jrdsettings/DataUsageSummary;->access$800(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    move-result-object v11

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/jrdsettings/DataUsageSummary;->access$3800(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v11

    iget-wide v11, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v11, v11

    const v12, 0x3f99999a

    mul-float/2addr v11, v12

    float-to-long v8, v11

    .line 2401
    .local v8, minLimitBytes:J
    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/jrdsettings/DataUsageSummary;->access$1600(Lcom/android/jrdsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 2402
    .local v1, currentTab:Ljava/lang/String;
    const-string v11, "3g"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2403
    const v11, 0x7f09089d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2404
    .local v7, message:Ljava/lang/CharSequence;
    const-wide v11, 0x140000000L

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2432
    .local v5, limitBytes:J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2433
    .local v0, args:Landroid/os/Bundle;
    const-string v11, "message"

    invoke-virtual {v0, v11, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2434
    const-string v11, "limitBytes"

    invoke-virtual {v0, v11, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2436
    new-instance v2, Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 2437
    .local v2, dialog:Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2438
    const/4 v11, 0x0

    invoke-virtual {v2, p0, v11}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2439
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    const-string v12, "confirmLimit"

    invoke-virtual {v2, v11, v12}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2405
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #dialog:Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;
    .end local v5           #limitBytes:J
    .end local v7           #message:Ljava/lang/CharSequence;
    :cond_1
    const-string v11, "4g"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2406
    const v11, 0x7f09089d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2407
    .restart local v7       #message:Ljava/lang/CharSequence;
    const-wide v11, 0x140000000L

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .restart local v5       #limitBytes:J
    goto :goto_1

    .line 2409
    .end local v5           #limitBytes:J
    .end local v7           #message:Ljava/lang/CharSequence;
    :cond_2
    const-string v11, "sim1"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "sim2"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "sim3"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2412
    :cond_3
    const v11, 0x7f09089d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2415
    .restart local v7       #message:Ljava/lang/CharSequence;
    const-wide/16 v3, -0x1

    .line 2416
    .local v3, limit:J
    const v11, 0x7f0e0002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-long v3, v11

    .line 2417
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-ltz v11, :cond_4

    .line 2418
    const-wide/32 v11, 0x100000

    mul-long/2addr v11, v3

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2422
    .restart local v5       #limitBytes:J
    :goto_2
    const-string v11, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "limitBytes ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-------limit=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2420
    .end local v5           #limitBytes:J
    :cond_4
    const-wide v11, 0x140000000L

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .restart local v5       #limitBytes:J
    goto :goto_2

    .line 2425
    .end local v3           #limit:J
    .end local v5           #limitBytes:J
    .end local v7           #message:Ljava/lang/CharSequence;
    :cond_5
    const-string v11, "mobile"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2426
    const v11, 0x7f09089d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2427
    .restart local v7       #message:Ljava/lang/CharSequence;
    const-wide v11, 0x140000000L

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .restart local v5       #limitBytes:J
    goto/16 :goto_1

    .line 2429
    .end local v5           #limitBytes:J
    .end local v7           #message:Ljava/lang/CharSequence;
    :cond_6
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown current tab: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 2444
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2446
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2447
    .local v4, message:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2449
    .local v2, limitBytes:J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2450
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09089c

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2451
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2453
    const v5, 0x104000a

    new-instance v6, Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2468
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
