.class public Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyguardWidgetEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GDSimpleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private myContext:Landroid/content/Context;

.field public myPostion:I

.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 385
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->myPostion:I

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    .line 389
    iput-object p2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->myContext:Landroid/content/Context;

    .line 390
    return-void
.end method


# virtual methods
.method public addItem(ILcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V
    .locals 1
    .parameter "position"
    .parameter "item"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 418
    :cond_0
    return-void
.end method

.method public addItem(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 408
    const-string v0, "KeyguardWidgetEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    return-void
.end method

.method public delteItemAtPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    return-void
.end method

.method public gc()V
    .locals 3

    .prologue
    .line 476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 479
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    .line 476
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 404
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 427
    if-nez p2, :cond_1

    .line 428
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->myInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$100(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040062

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 429
    new-instance v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;)V

    .line 430
    .local v1, holder:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;
    const v3, 0x7f0b0110

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;->griditem_image_view:Landroid/widget/ImageView;

    .line 432
    const v3, 0x7f0b0111

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;->widget_delete_view:Landroid/widget/ImageView;

    .line 434
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 441
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    .line 443
    .local v2, item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    iget-object v3, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;->griditem_image_view:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 444
    const/4 v0, 0x1

    .line 445
    .local v0, deleteEnable:Z
    if-eqz v0, :cond_0

    .line 446
    iget-object v3, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;->widget_delete_view:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$1;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    :cond_0
    return-object p2

    .line 439
    .end local v0           #deleteEnable:Z
    .end local v1           #holder:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;
    .end local v2           #item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter$ViewHolder;
    goto :goto_0
.end method
