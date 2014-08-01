.class Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/jrdsettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/jrdsettings/applications/ApplicationsState;

.field private final mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

.field private mWaitingForData:Z

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/applications/ApplicationsState;Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;I)V
    .locals 1
    .parameter "state"
    .parameter "tab"
    .parameter "filterMode"

    .prologue
    .line 567
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 542
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 544
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 547
    new-instance v0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 568
    iput-object p1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    .line 569
    invoke-virtual {p1, p0}, Lcom/android/jrdsettings/applications/ApplicationsState;->newSession(Lcom/android/jrdsettings/applications/ApplicationsState$Callbacks;)Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    .line 570
    iput-object p2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    .line 571
    iget-object v0, p2, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/jrdsettings/applications/ManageApplications;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 572
    iput p3, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 573
    return-void
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    return-object v0
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    .local p2, origEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v2, p2

    .line 685
    :cond_1
    return-object v2

    .line 674
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/jrdsettings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, prefixStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 676
    .local v5, spacePrefixStr:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v2, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 679
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 680
    .local v0, entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, nlabel:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 682
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 771
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v3, p2}, Lcom/android/jrdsettings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/jrdsettings/applications/AppViewHolder;

    move-result-object v1

    .line 772
    .local v1, holder:Lcom/android/jrdsettings/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 775
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 776
    .local v0, entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 777
    :try_start_0
    iput-object v0, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    .line 778
    iget-object v3, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 779
    iget-object v3, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/jrdsettings/applications/ApplicationsState;

    invoke-virtual {v3, v0}, Lcom/android/jrdsettings/applications/ApplicationsState;->ensureIcon(Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;)V

    .line 782
    iget-object v3, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 783
    iget-object v3, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v3, v4}, Lcom/android/jrdsettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 786
    iget-object v3, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x80

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 787
    iget-object v3, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v3, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v4, 0x7f09063e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 795
    :goto_0
    iget v3, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 796
    iget-object v3, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object v3, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 802
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 804
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    return-object p2

    .line 789
    :cond_3
    :try_start_1
    iget-object v3, v0, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_4

    .line 790
    iget-object v3, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v3, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v4, 0x7f09063d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 802
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 793
    :cond_4
    :try_start_2
    iget-object v3, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 800
    :cond_5
    iget-object v2, v1, Lcom/android/jrdsettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 746
    iget v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 750
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 816
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 720
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 714
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 724
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 725
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/AppViewHolder;

    .line 726
    .local v0, holder:Lcom/android/jrdsettings/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/jrdsettings/applications/AppViewHolder;->entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 727
    iget-object v3, v0, Lcom/android/jrdsettings/applications/AppViewHolder;->entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 728
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/jrdsettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 729
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    iget-object v2, v0, Lcom/android/jrdsettings/applications/AppViewHolder;->entry:Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/jrdsettings/applications/ManageApplications;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/applications/ManageApplications;->access$1000(Lcom/android/jrdsettings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 736
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 738
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v2}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 742
    .end local v0           #holder:Lcom/android/jrdsettings/applications/AppViewHolder;
    :cond_1
    return-void

    .line 729
    .restart local v0       #holder:Lcom/android/jrdsettings/applications/AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 724
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 696
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 699
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iput-boolean v3, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 705
    iput-object p1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 706
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 707
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 708
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 709
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .parameter "running"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/jrdsettings/applications/ManageApplications;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 692
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 590
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->pause()V

    .line 592
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .parameter "sort"

    .prologue
    .line 595
    iget v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    iput p1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 8
    .parameter "eraseold"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 606
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 607
    .local v1, emulated:Z
    if-eqz v1, :cond_1

    .line 608
    iput v6, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 612
    :goto_0
    iget v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    packed-switch v4, :pswitch_data_0

    .line 623
    const/4 v3, 0x0

    .line 626
    .local v3, filterObj:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v4, :pswitch_data_1

    .line 641
    sget-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 644
    .local v0, comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    invoke-virtual {v4, v3, v0}, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->rebuild(Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 646
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 667
    :goto_3
    return-void

    .line 610
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    .end local v2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filterObj:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;
    :cond_1
    iput v7, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 614
    :pswitch_0
    sget-object v3, Lcom/android/jrdsettings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;

    .line 615
    .restart local v3       #filterObj:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 617
    .end local v3           #filterObj:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v3, Lcom/android/jrdsettings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;

    .line 618
    .restart local v3       #filterObj:Lcom/android/jrdsettings/applications/ApplicationsState$AppFilter;
    if-nez v1, :cond_0

    .line 619
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 628
    :pswitch_2
    iget v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v4, :pswitch_data_2

    .line 636
    sget-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 637
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 630
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_3
    sget-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 631
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 633
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/jrdsettings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 634
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 650
    .restart local v2       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    iput-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 651
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 652
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 656
    :goto_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 657
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 659
    if-nez v2, :cond_4

    .line 660
    iput-boolean v7, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 661
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 654
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 664
    :cond_4
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v4, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 626
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 628
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resume(I)V
    .locals 2
    .parameter "sort"

    .prologue
    const/4 v1, 0x1

    .line 577
    iget-boolean v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 578
    iput-boolean v1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 579
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/jrdsettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ApplicationsState$Session;->resume()V

    .line 580
    iput p1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 581
    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method
