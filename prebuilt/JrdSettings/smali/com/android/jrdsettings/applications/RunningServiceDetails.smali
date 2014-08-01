.class public Lcom/android/jrdsettings/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/jrdsettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# static fields
.field static final DIALOG_CONFIRM_STOP:I = 0x1

.field static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field static final KEY_PROCESS:Ljava/lang/String; = "process"

.field static final KEY_UID:Ljava/lang/String; = "uid"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field static final TAG:Ljava/lang/String; = "RunningServicesDetails"


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field private mDataFileStats:Landroid/os/StatFs;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsLowMem:Z

.field mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/jrdsettings/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mIsLowMem:Z

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 646
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 568
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/jrdsettings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails$1;-><init>(Lcom/android/jrdsettings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 640
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/jrdsettings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/jrdsettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 642
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 643
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 644
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .parameter "comp"

    .prologue
    .line 629
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 630
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;

    .line 631
    .local v0, ad:Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/jrdsettings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/jrdsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/jrdsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    .end local v0           #ad:Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 629
    .restart local v0       #ad:Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v0           #ad:Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 497
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 498
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 497
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 502
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 504
    iput-object v6, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 507
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 508
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 509
    iput-object v6, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 512
    :cond_2
    iput v5, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mNumServices:I

    .line 514
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 515
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mUser:Lcom/android/jrdsettings/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 517
    iget-boolean v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 519
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 523
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 524
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/jrdsettings/applications/RunningState$MergedItem;ZZ)V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 521
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 526
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 527
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/jrdsettings/applications/RunningState$MergedItem;ZZ)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 530
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/jrdsettings/applications/RunningState$MergedItem;ZZ)V

    .line 533
    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/jrdsettings/applications/RunningState$MergedItem;ZZ)V
    .locals 7
    .parameter "item"
    .parameter "inclServices"
    .parameter "inclProcesses"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 466
    if-eqz p1, :cond_1

    .line 467
    if-eqz p2, :cond_0

    .line 468
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 469
    iget-object v2, p1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/jrdsettings/applications/RunningState$ServiceItem;Lcom/android/jrdsettings/applications/RunningState$MergedItem;ZZ)V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    .end local v0           #i:I
    :cond_0
    if-eqz p3, :cond_1

    .line 474
    iget-object v2, p1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 478
    const/4 v5, 0x0

    iget v2, p1, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/jrdsettings/applications/RunningState$ServiceItem;Lcom/android/jrdsettings/applications/RunningState$MergedItem;ZZ)V

    .line 494
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 478
    goto :goto_1

    .line 482
    :cond_3
    const/4 v0, -0x1

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 483
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    .line 485
    .local v1, pi:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/jrdsettings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 482
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 483
    .end local v1           #pi:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 489
    .restart local v1       #pi:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;
    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/jrdsettings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/jrdsettings/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .parameter "pi"
    .parameter "isMain"

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 389
    new-instance v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/jrdsettings/applications/RunningServiceDetails;)V

    .line 390
    .local v2, detail:Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0400bd

    iget-object v11, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 392
    .local v5, root:Landroid/view/View;
    iget-object v9, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 393
    iput-object v5, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 394
    new-instance v9, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    .line 395
    iget-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-object v11, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/jrdsettings/applications/RunningState;Lcom/android/jrdsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    .line 398
    const v9, 0x7f0b00cb

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    .line 399
    const v9, 0x7f0b00c9

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mCategory:Landroid/view/View;

    .line 400
    const v9, 0x7f0b00ca

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mLaunch:Landroid/view/View;

    .line 401
    iget-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mCategory:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mLaunch:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/jrdsettings/applications/RunningState$BaseItem;

    iget-object v10, v10, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    .line 408
    iget-boolean v9, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mIsLowMem:Z

    if-eqz v9, :cond_1

    .line 409
    iget-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 416
    :goto_0
    const v9, 0x7f0b01e6

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 417
    .local v1, description:Landroid/widget/TextView;
    iget v9, p1, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 420
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 461
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    return-void

    .line 411
    .end local v1           #description:Landroid/widget/TextView;
    :cond_1
    iget-object v10, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    iget-object v9, v2, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 421
    .restart local v1       #description:Landroid/widget/TextView;
    :cond_3
    if-eqz p2, :cond_4

    .line 422
    const v9, 0x7f09068c

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 424
    :cond_4
    const/4 v8, 0x0

    .line 425
    .local v8, textid:I
    const/4 v3, 0x0

    .line 426
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/jrdsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 427
    .local v6, rpi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 430
    .local v0, comp:Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 456
    :cond_5
    :goto_3
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 432
    :pswitch_0
    const v8, 0x7f09068e

    .line 433
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_5

    .line 435
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 437
    .local v4, prov:Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/jrdsettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_3

    .line 444
    .end local v4           #prov:Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f09068d

    .line 445
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_5

    .line 447
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 449
    .local v7, serv:Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/jrdsettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_3

    .line 451
    .end local v7           #serv:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_3

    .line 439
    :catch_1
    move-exception v9

    goto :goto_3

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    .prologue
    .line 263
    iget v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400bf

    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f090685

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 269
    :cond_0
    iget v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mNumProcesses:I

    .line 270
    return-void
.end method

.method addServiceDetailsView(Lcom/android/jrdsettings/applications/RunningState$ServiceItem;Lcom/android/jrdsettings/applications/RunningState$MergedItem;ZZ)V
    .locals 11
    .parameter "si"
    .parameter "mi"
    .parameter "isService"
    .parameter "inclDetails"

    .prologue
    .line 274
    if-eqz p3, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addServicesHeader()V

    .line 284
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 286
    .local v0, bi:Lcom/android/jrdsettings/applications/RunningState$BaseItem;
    :goto_1
    new-instance v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/jrdsettings/applications/RunningServiceDetails;)V

    .line 287
    .local v3, detail:Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v7, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400be

    iget-object v9, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 289
    .local v6, root:Landroid/view/View;
    iget-object v7, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    iput-object v6, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 291
    iput-object p1, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/jrdsettings/applications/RunningState$ServiceItem;

    .line 292
    new-instance v7, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v7, v6}, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    .line 293
    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v8, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-object v9, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/jrdsettings/applications/RunningState;Lcom/android/jrdsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v7

    iput-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    .line 295
    if-nez p4, :cond_1

    .line 296
    const v7, 0x7f0b01e5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v7, :cond_2

    .line 300
    iget-object v7, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v8, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 304
    :cond_2
    const v7, 0x7f0b01e6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 305
    .local v2, description:Landroid/widget/TextView;
    if-eqz p1, :cond_5

    iget-object v7, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v7, :cond_5

    .line 306
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v9, v9, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iget-object v10, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :goto_2
    const v7, 0x7f0b0229

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 329
    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v8, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_9

    const v7, 0x7f090687

    :goto_3
    invoke-virtual {v9, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v7, 0x7f0b022a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 335
    if-eqz p3, :cond_a

    iget v7, p2, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_a

    .line 339
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 340
    const v7, 0x7f0b00b0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :goto_4
    iget-object v7, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    return-void

    .line 276
    .end local v0           #bi:Lcom/android/jrdsettings/applications/RunningState$BaseItem;
    .end local v2           #description:Landroid/widget/TextView;
    .end local v3           #detail:Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    .end local v6           #root:Landroid/view/View;
    :cond_3
    iget v7, p2, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 284
    goto/16 :goto_1

    .line 310
    .restart local v0       #bi:Lcom/android/jrdsettings/applications/RunningState$BaseItem;
    .restart local v2       #description:Landroid/widget/TextView;
    .restart local v3       #detail:Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;
    .restart local v6       #root:Landroid/view/View;
    :cond_5
    iget-boolean v7, p2, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v7, :cond_6

    .line 311
    const v7, 0x7f09068a

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 312
    :cond_6
    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_7

    .line 314
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 316
    .local v1, clientr:Landroid/content/res/Resources;
    iget-object v7, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, label:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f09068b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 319
    .end local v1           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_2

    .line 322
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz p1, :cond_8

    const v7, 0x7f090688

    :goto_5
    invoke-virtual {v8, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f090689

    goto :goto_5

    .line 330
    :cond_9
    const v7, 0x7f090686

    goto/16 :goto_3

    .line 342
    :cond_a
    if-eqz p1, :cond_b

    iget-object v7, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v7, :cond_b

    .line 343
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v9, v9, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iget-object v10, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_6
    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v8, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_f

    const v7, 0x7f090687

    :goto_7
    invoke-virtual {v9, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v8, 0x1040411

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 371
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "send_action_app_error"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 373
    .local v4, enabled:I
    if-eqz v4, :cond_11

    if-eqz p1, :cond_11

    .line 374
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v7, v8, v9}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 377
    iget-object v8, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_4

    .line 347
    .end local v4           #enabled:I
    :cond_b
    iget-boolean v7, p2, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v7, :cond_c

    .line 348
    const v7, 0x7f09068a

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 349
    :cond_c
    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_d

    .line 351
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 353
    .restart local v1       #clientr:Landroid/content/res/Resources;
    iget-object v7, p1, Lcom/android/jrdsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 354
    .restart local v5       #label:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f09068b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 356
    .end local v1           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto/16 :goto_6

    .line 359
    :cond_d
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz p1, :cond_e

    const v7, 0x7f090688

    :goto_9
    invoke-virtual {v8, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_e
    const v7, 0x7f090689

    goto :goto_9

    .line 366
    :cond_f
    const v7, 0x7f090686

    goto/16 :goto_7

    .line 377
    .restart local v4       #enabled:I
    :cond_10
    const/4 v7, 0x0

    goto :goto_8

    .line 379
    :cond_11
    iget-object v7, v3, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method addServicesHeader()V
    .locals 4

    .prologue
    .line 253
    iget v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400bf

    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f090684

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    :cond_0
    iget v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mNumServices:I

    .line 260
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 693
    iget-boolean v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 694
    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 695
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/jrdsettings/applications/RunningState;->resume(Lcom/android/jrdsettings/applications/RunningState$OnRefreshUiListener;)V

    .line 700
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/RunningState;->waitForData()V

    .line 704
    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 706
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, item:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/jrdsettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 228
    .local v3, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 229
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 230
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    .line 231
    .local v2, mi:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mUserId:I

    iget v5, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    .end local v3           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/jrdsettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 234
    .restart local v0       #i:I
    .restart local v2       #mi:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    .restart local v3       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget v4, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/jrdsettings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    .line 237
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/jrdsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    :cond_4
    move-object v1, v2

    .line 245
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 246
    iput-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    .line 247
    const/4 v4, 0x1

    .line 249
    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 581
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 583
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mUid:I

    .line 584
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mUserId:I

    .line 585
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 588
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 589
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 591
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    .line 593
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mDataFileStats:Landroid/os/StatFs;

    .line 595
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 600
    const v1, 0x7f0400bc

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 601
    .local v0, view:Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/jrdsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 603
    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 604
    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 605
    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 606
    new-instance v1, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    .line 610
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->ensureData()V

    .line 612
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 617
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 619
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/RunningState;->pause()V

    .line 620
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 733
    :goto_0
    return-void

    .line 720
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 722
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 725
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 726
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 729
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 730
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 624
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 625
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->ensureData()V

    .line 626
    return-void
.end method

.method refreshUi(Z)V
    .locals 8
    .parameter "dataChanged"

    .prologue
    const-wide/32 v6, 0x100000

    .line 537
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mDataFileStats:Landroid/os/StatFs;

    const-string v3, "/data"

    invoke-virtual {v2, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 539
    .local v0, mFreeMem:J
    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFreeMem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-long v4, v0, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    div-long v2, v0, v6

    const-wide/16 v4, 0xf

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 541
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mIsLowMem:Z

    .line 546
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    const/4 p1, 0x1

    .line 549
    :cond_0
    if-eqz p1, :cond_1

    .line 550
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_3

    .line 551
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-object v4, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    iget-object v5, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/jrdsettings/applications/RunningState;Lcom/android/jrdsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    .line 563
    :goto_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->addDetailViews()V

    .line 565
    :cond_1
    :goto_2
    return-void

    .line 543
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mIsLowMem:Z

    goto :goto_0

    .line 553
    :cond_3
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v2, :cond_4

    .line 555
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v3, 0x7f090683

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 560
    :cond_4
    invoke-direct {p0}, Lcom/android/jrdsettings/applications/RunningServiceDetails;->finish()V

    goto :goto_2
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 709
    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 712
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/jrdsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_1
    return-void
.end method
