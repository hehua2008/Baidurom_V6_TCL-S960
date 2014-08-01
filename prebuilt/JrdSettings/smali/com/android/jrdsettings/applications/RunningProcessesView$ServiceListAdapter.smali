.class Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/jrdsettings/applications/RunningState;

.field final synthetic this$0:Lcom/android/jrdsettings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/applications/RunningProcessesView;Lcom/android/jrdsettings/applications/RunningState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/jrdsettings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 219
    iput-object p2, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/jrdsettings/applications/RunningState;

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 222
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 223
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 340
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-object v4, v3, Lcom/android/jrdsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 345
    monitor-exit v4

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    .line 348
    .local v2, vh:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    .line 349
    .local v1, item:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-object v5, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/jrdsettings/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/jrdsettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/jrdsettings/applications/RunningState;Lcom/android/jrdsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 350
    .local v0, ai:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/jrdsettings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/jrdsettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    monitor-exit v4

    goto :goto_0

    .end local v0           #ai:Lcom/android/jrdsettings/applications/RunningProcessesView$ActiveItem;
    .end local v1           #item:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    .end local v2           #vh:Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 324
    if-nez p2, :cond_0

    .line 325
    invoke-virtual {p0, p3}, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 330
    return-object v0

    .line 327
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 319
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/jrdsettings/applications/RunningState$BaseItem;->mIsProcess:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400ba

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/jrdsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 336
    return-object v0
.end method

.method refreshItems()V
    .locals 8

    .prologue
    .line 240
    iget-boolean v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v6}, Lcom/android/jrdsettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 258
    .local v4, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 259
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 260
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;

    .line 261
    .local v2, item:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    iget-object v6, v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    if-eqz v6, :cond_0

    .line 262
    iget-object v6, v2, Lcom/android/jrdsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/jrdsettings/applications/RunningState$ProcessItem;

    iget-object v5, v6, Lcom/android/jrdsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 263
    .local v5, processName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/jrdsettings/applications/RunningProcessesView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/jrdsettings/applications/RunningProcessesView;->access$000(Lcom/android/jrdsettings/applications/RunningProcessesView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, hideApp:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 265
    if-eqz v5, :cond_2

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 240
    .end local v0           #hideApp:[Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #item:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    .end local v4           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    .end local v5           #processName:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v6}, Lcom/android/jrdsettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 264
    .restart local v0       #hideApp:[Ljava/lang/String;
    .restart local v1       #index:I
    .restart local v2       #item:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    .restart local v4       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/RunningState$MergedItem;>;"
    .restart local v5       #processName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 274
    .end local v0           #hideApp:[Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #item:Lcom/android/jrdsettings/applications/RunningState$MergedItem;
    .end local v5           #processName:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v6, v4, :cond_4

    .line 275
    iput-object v4, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    .line 276
    if-nez v4, :cond_5

    .line 277
    iget-object v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 286
    :cond_4
    :goto_3
    return-void

    .line 279
    :cond_5
    iget-object v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    iget-boolean v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v6, :cond_4

    .line 282
    iget-object v6, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/jrdsettings/applications/RunningState;

    iget-object v7, v7, Lcom/android/jrdsettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3
.end method

.method setShowBackground(Z)V
    .locals 2
    .parameter "showBackground"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 227
    iput-boolean p1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 228
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/jrdsettings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/jrdsettings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 230
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 231
    iget-object v0, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/jrdsettings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/jrdsettings/applications/RunningProcessesView;->mColorBar:Lcom/android/jrdsettings/applications/LinearColorBar;

    iget-boolean v1, p0, Lcom/android/jrdsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/applications/LinearColorBar;->setShowingGreen(Z)V

    .line 233
    :cond_0
    return-void
.end method
