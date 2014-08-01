.class public Lcom/android/jrdsettings/KeyguardOrderAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyguardOrderAdapter.java"


# static fields
.field private static final WEATHER_CLASS_NAME:Ljava/lang/String; = "com.jrdcom.widget.WeatherClockWidget"

.field private static final WEATHER_PACKAGE_NAME:Ljava/lang/String; = "com.jrdcom.weather"


# instance fields
.field private ShowItem:Z

.field private context:Landroid/content/Context;

.field private holdPosition:I

.field private isChanged:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;>;"
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->isChanged:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->ShowItem:Z

    .line 32
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 35
    return-void
.end method

.method private setWidgetOrder()V
    .locals 3

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 69
    .local v1, order:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    iget v2, v2, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->itemWidgetId:I

    aput v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveAppWidgets([I)V

    .line 73
    return-void
.end method


# virtual methods
.method public cancelAllWidgetPreviewLoaders()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    invoke-virtual {v1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->cancelLoadingWidgetPreview()V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public exchange(II)V
    .locals 3
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 53
    iput p2, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->holdPosition:I

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguardOrderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, startObject:Ljava/lang/Object;
    if-ge p1, p2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    check-cast v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    .end local v0           #startObject:Ljava/lang/Object;
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->isChanged:Z

    .line 63
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 64
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguardOrderAdapter;->setWidgetOrder()V

    .line 65
    return-void

    .line 59
    .restart local v0       #startObject:Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    check-cast v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    .end local v0           #startObject:Ljava/lang/Object;
    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 80
    iget-object v9, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04005e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguardOrderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    .line 82
    .local v5, item:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    const v9, 0x7f0b0106

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 83
    .local v7, textView:Landroid/widget/TextView;
    iget-object v9, v5, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v9, 0x7f0b003d

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 86
    .local v4, iconView:Landroid/widget/ImageView;
    const v9, 0x7f0b010d

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 88
    .local v1, homeFlag:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardOrderAdapter;->getCount()I

    move-result v0

    .line 89
    .local v0, count:I
    const/4 v2, 0x0

    .line 90
    .local v2, homeFlagEnable:Z
    const/4 v8, 0x0

    .line 91
    .local v8, weatherWidgetExist:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/KeyguardOrderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    .line 93
    .local v6, itemTem:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    if-eqz v6, :cond_0

    .line 94
    iget-object v9, v6, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->packageName:Ljava/lang/String;

    const-string v10, "com.jrdcom.weather"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v6, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->className:Ljava/lang/String;

    const-string v10, "com.jrdcom.widget.WeatherClockWidget"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 96
    const/4 v8, 0x1

    .line 91
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v6           #itemTem:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
    :cond_1
    iget-object v9, v5, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->packageName:Ljava/lang/String;

    const-string v10, "com.jrdcom.weather"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v5, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->className:Ljava/lang/String;

    const-string v10, "com.jrdcom.widget.WeatherClockWidget"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 102
    const/4 v2, 0x1

    .line 113
    :goto_1
    if-eqz v2, :cond_5

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_2
    iget v9, v5, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->itemWidgetId:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_6

    .line 122
    iget-object v9, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020039

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :goto_3
    iget-boolean v9, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->isChanged:Z

    if-eqz v9, :cond_2

    .line 129
    iget v9, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->holdPosition:I

    if-ne p1, v9, :cond_2

    .line 130
    iget-boolean v9, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->ShowItem:Z

    if-nez v9, :cond_2

    .line 131
    const/4 v9, 0x4

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_2
    return-object p2

    .line 105
    :cond_3
    if-nez v8, :cond_4

    iget v9, v5, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->itemWidgetId:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_4

    .line 107
    const/4 v2, 0x1

    goto :goto_1

    .line 109
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 116
    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {v5, v4}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->loadWidgetPreview(Landroid/widget/ImageView;)V

    goto :goto_3
.end method

.method public showDropItem(Z)V
    .locals 0
    .parameter "showItem"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/jrdsettings/KeyguardOrderAdapter;->ShowItem:Z

    .line 76
    return-void
.end method
