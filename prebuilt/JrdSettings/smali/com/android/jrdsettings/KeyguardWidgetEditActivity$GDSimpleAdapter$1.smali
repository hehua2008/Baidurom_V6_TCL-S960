.class Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;
.super Ljava/lang/Object;
.source "KeyguardWidgetEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    sget v2, Lcom/android/jrdsettings/CoverGridView;->deleteImagePostion:I

    iput v2, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->myPostion:I

    .line 453
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->myPostion:I

    if-ltz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget v2, v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->myPostion:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    .line 455
    .local v0, addItem:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget v2, v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->myPostion:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 456
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->deleteWidget(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    .line 457
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
    invoke-static {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$200(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->addItem(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    .line 458
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initUpGridView()V

    .line 459
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initBottmGridView()V

    .line 460
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 461
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
    invoke-static {v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$200(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 466
    .end local v0           #addItem:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    :cond_0
    const/4 v1, -0x1

    sput v1, Lcom/android/jrdsettings/CoverGridView;->deleteImagePostion:I

    .line 467
    return-void
.end method
