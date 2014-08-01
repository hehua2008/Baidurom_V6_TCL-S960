.class public Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "KeyguardWidgetEditActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method private setCurDot(I)V
    .locals 2
    .parameter "positon"

    .prologue
    .line 664
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
    invoke-static {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$200(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->getCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->currentIndex:I
    invoke-static {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$300(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$400(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 669
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->dotsnew:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$400(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->currentIndex:I
    invoke-static {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$300(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 670
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #setter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->currentIndex:I
    invoke-static {v0, p1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$302(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;I)I

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 598
    const-string v0, "KeyguardWidgetEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pager addItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_0
    return-void
.end method

.method public deletePosion(IILcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V
    .locals 2
    .parameter "result"
    .parameter "position"
    .parameter "deleteObject"

    .prologue
    .line 674
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 675
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v1, p3}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->addItem(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    .line 680
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$500(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 681
    .local v0, currentViewPager:I
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr p2, v1

    .line 683
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v1, p1, p3}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->saveWidget(ILcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    .line 685
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
    invoke-static {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$200(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->delteItemAtPosition(I)V

    .line 686
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initUpGridView()V

    .line 688
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initBottmGridView()V

    .line 689
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 690
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
    invoke-static {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$200(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 692
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
    invoke-static {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$200(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 694
    add-int/lit8 v0, v0, -0x1

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$500(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 697
    return-void

    .line 677
    .end local v0           #currentViewPager:I
    :cond_1
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v1, p1, p3}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->addItem(ILcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    goto :goto_0
.end method

.method public delteItemAtPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 606
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 584
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 585
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 590
    return-void
.end method

.method public gc()V
    .locals 3

    .prologue
    .line 700
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 703
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    .line 700
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .parameter "container"
    .parameter "position"

    .prologue
    .line 609
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->myInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$100(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040061

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/KeyguradEditGridView;

    .line 611
    .local v2, ww:Lcom/android/jrdsettings/KeyguradEditGridView;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v0, everyGridItems:Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 613
    mul-int/lit8 v3, p2, 0x4

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 614
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    mul-int/lit8 v4, p2, 0x4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {v2, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 619
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->myInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$100(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
    invoke-static {v4}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$200(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/jrdsettings/KeyguradEditGridView;->setGridItems(Ljava/util/ArrayList;Landroid/view/LayoutInflater;Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;)V

    .line 622
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 623
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 628
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 650
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 656
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "positon"

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->setCurDot(I)V

    .line 661
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 634
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 644
    return-void
.end method
