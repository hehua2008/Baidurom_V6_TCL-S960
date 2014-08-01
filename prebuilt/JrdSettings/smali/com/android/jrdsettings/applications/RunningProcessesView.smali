.class public Lcom/android/jrdsettings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/jrdsettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/jrdsettings/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/jrdsettings/applications/LinearColorBar;

.field mCurDialog:Landroid/app/Dialog;

.field mCurSelected:Lcom/android/jrdsettings/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/jrdsettings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 460
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 81
    iput v4, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 82
    iput v4, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 83
    iput v4, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 84
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 85
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 86
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 87
    iput-wide v2, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 91
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 461
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mMyUserId:I

    .line 462
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/applications/RunningProcessesView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private startServiceDetailsActivity(Lcom/android/jrdsettings/applications/RunningState$MergedItem;)V
    .locals 7
    .parameter "mi"

    .prologue
    const/4 v4, 0x0

    .line 439
    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 441
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v2, args:Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    .line 443
    const-string v1, "uid"

    iget-object v3, p1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/jrdsettings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    const-string v1, "process"

    iget-object v3, p1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    const-string v1, "user_id"

    iget v3, p1, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    const-string v1, "background"

    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 450
    .local v0, pa:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/jrdsettings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090682

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 453
    .end local v0           #pa:Landroid/preference/PreferenceActivity;
    .end local v2           #args:Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 465
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/jrdsettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/applications/RunningState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    .line 467
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 469
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400bb

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 470
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 471
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 473
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 475
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 476
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 477
    new-instance v3, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v4, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-direct {v3, p0, v4}, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/jrdsettings/applications/RunningProcessesView;Lcom/android/jrdsettings/applications/RunningState;)V

    iput-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 478
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 479
    const v3, 0x7f0b01e1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/jrdsettings/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mColorBar:Lcom/android/jrdsettings/applications/LinearColorBar;

    .line 480
    const v3, 0x7f0b01e3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 481
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/jrdsettings/applications/RunningProcessesView$1;

    invoke-direct {v4, p0}, Lcom/android/jrdsettings/applications/RunningProcessesView$1;-><init>(Lcom/android/jrdsettings/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    const v3, 0x7f0b01e2

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 488
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/jrdsettings/applications/RunningProcessesView$2;

    invoke-direct {v4, p0}, Lcom/android/jrdsettings/applications/RunningProcessesView$2;-><init>(Lcom/android/jrdsettings/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 496
    .local v2, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 497
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 498
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/RunningState;->pause()V

    .line 502
    iput-object v1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 503
    iput-object v1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 504
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "owner"
    .parameter "dataAvail"

    .prologue
    const/4 v0, 0x1

    .line 507
    iput-object p1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 508
    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/jrdsettings/applications/RunningState;->resume(Lcom/android/jrdsettings/applications/RunningState$OnRefreshUiListener;)V

    .line 509
    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/jrdsettings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 516
    :goto_0
    return v0

    .line 515
    :cond_0
    iput-object p2, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 516
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 432
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    .line 433
    .local v1, mi:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mCurSelected:Lcom/android/jrdsettings/applications/RunningState$BaseItem;

    .line 434
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/jrdsettings/applications/RunningState$MergedItem;)V

    .line 435
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 534
    packed-switch p1, :pswitch_data_0

    .line 547
    :goto_0
    return-void

    .line 536
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 539
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 540
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 543
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 544
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 21
    .parameter "dataChanged"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    check-cast v15, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

    move-object v3, v15

    check-cast v3, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 358
    .local v3, adapter:Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v3}, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 359
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 362
    .end local v3           #adapter:Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v15, :cond_1

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    .line 364
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 369
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 370
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v17

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    move-wide/from16 v17, v0

    sub-long v4, v15, v17

    .line 372
    .local v4, availMem:J
    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-gez v15, :cond_2

    .line 373
    const-wide/16 v4, 0x0

    .line 376
    :cond_2
    invoke-static {}, Landroid/os/Process;->getZramExtraAvailableSize()J

    move-result-wide v6

    .line 377
    .local v6, extraAvailableSize:J
    add-long/2addr v4, v6

    .line 378
    const-string v15, "RunningProcessView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "extraAvailableSize = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v13

    .line 382
    .local v13, totalSize:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-object v0, v15, Lcom/android/jrdsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 383
    :try_start_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/jrdsettings/applications/RunningState;->mNumBackgroundProcesses:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/jrdsettings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v19, v0

    cmp-long v15, v17, v19

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastAvailMemory:J

    move-wide/from16 v17, v0

    cmp-long v15, v17, v4

    if-eqz v15, :cond_4

    .line 386
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget v15, v15, Lcom/android/jrdsettings/applications/RunningState;->mNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/jrdsettings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 388
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 389
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastAvailMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v19, v0

    add-long v8, v17, v19

    .line 390
    .local v8, freeMem:J
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 391
    .local v10, sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090678

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    sub-long v17, v13, v8

    move-wide/from16 v0, v17

    invoke-static {v15, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 397
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090679

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .end local v8           #freeMem:J
    .end local v10           #sizeStr:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/jrdsettings/applications/RunningState;->mNumForegroundProcesses:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/jrdsettings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v19, v0

    cmp-long v15, v17, v19

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/jrdsettings/applications/RunningState;->mNumServiceProcesses:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/jrdsettings/applications/RunningState;->mServiceProcessMemory:J

    move-wide/from16 v19, v0

    cmp-long v15, v17, v19

    if-eqz v15, :cond_6

    .line 404
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget v15, v15, Lcom/android/jrdsettings/applications/RunningState;->mNumForegroundProcesses:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 405
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/jrdsettings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget v15, v15, Lcom/android/jrdsettings/applications/RunningState;->mNumServiceProcesses:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/jrdsettings/applications/RunningState;->mServiceProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 417
    :cond_6
    long-to-float v11, v13

    .line 418
    .local v11, totalMem:F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    add-long v17, v17, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-float v12, v0

    .line 420
    .local v12, totalShownMem:F
    const-string v15, "RunningProcessView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "totalShownMem = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " + "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " + "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " + "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mColorBar:Lcom/android/jrdsettings/applications/LinearColorBar;

    sub-float v17, v11, v12

    div-float v17, v17, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v11

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/jrdsettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 427
    monitor-exit v16

    .line 428
    return-void

    .line 427
    .end local v11           #totalMem:F
    .end local v12           #totalShownMem:F
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 521
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    .line 523
    .local v0, ai:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 525
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 530
    .end local v0           #ai:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
