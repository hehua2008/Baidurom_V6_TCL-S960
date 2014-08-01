.class public Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyguradEditGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguradEditGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppWidgetAdapter"
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private myContext:Landroid/content/Context;

.field public myPostion:I

.field final synthetic this$0:Lcom/android/jrdsettings/KeyguradEditGridView;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/KeyguradEditGridView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;>;"
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->this$0:Lcom/android/jrdsettings/KeyguradEditGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->myPostion:I

    .line 478
    iput-object p3, p0, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->mItems:Ljava/util/List;

    .line 479
    iput-object p2, p0, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->myContext:Landroid/content/Context;

    .line 480
    return-void
.end method


# virtual methods
.method public changeBackground(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->getItem(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v0

    .line 530
    .local v0, changeObject:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    .locals 1
    .parameter "position"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->getItem(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 500
    int-to-long v0, p1

    return-wide v0
.end method

.method public getShadow(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    .locals 1
    .parameter "position"

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->getItem(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v0

    .line 534
    .local v0, selectItem:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 508
    if-nez p2, :cond_0

    .line 509
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->this$0:Lcom/android/jrdsettings/KeyguradEditGridView;

    #getter for: Lcom/android/jrdsettings/KeyguradEditGridView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/jrdsettings/KeyguradEditGridView;->access$000(Lcom/android/jrdsettings/KeyguradEditGridView;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04005b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 511
    new-instance v1, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->this$0:Lcom/android/jrdsettings/KeyguradEditGridView;

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;-><init>(Lcom/android/jrdsettings/KeyguradEditGridView;)V

    .line 512
    .local v1, viewHolder:Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;
    const v2, 0x7f0b0106

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;->labalView:Landroid/widget/TextView;

    .line 513
    const v2, 0x7f0b003d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 514
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 518
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->getItem(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v0

    .line 519
    .local v0, item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    iget-object v2, v1, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object v2, v1, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 522
    iget-object v2, v1, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;->labalView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    return-object p2

    .line 516
    .end local v0           #item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    .end local v1           #viewHolder:Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;

    .restart local v1       #viewHolder:Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;
    goto :goto_0
.end method
