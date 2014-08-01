.class Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/jrdsettings/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/jrdsettings/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/DreamSettings;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/jrdsettings/DreamSettings;

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 296
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 297
    return-void
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;Lcom/android/jrdsettings/DreamBackend$DreamInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/jrdsettings/DreamBackend$DreamInfo;)V

    return-void
.end method

.method private activate(Lcom/android/jrdsettings/DreamBackend$DreamInfo;)V
    .locals 3
    .parameter "dreamInfo"

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;->getCurrentSelection()Lcom/android/jrdsettings/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 363
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/DreamBackend$DreamInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->isActive:Z

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->isActive:Z

    .line 366
    iget-object v1, p0, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/jrdsettings/DreamSettings;

    #getter for: Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;
    invoke-static {v1}, Lcom/android/jrdsettings/DreamSettings;->access$200(Lcom/android/jrdsettings/DreamSettings;)Lcom/android/jrdsettings/DreamBackend;

    move-result-object v1

    iget-object v2, p1, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 367
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 342
    .local v0, row:Landroid/view/View;
    new-instance v1, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter$3;

    invoke-direct {v1, p0, v0}, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter$3;-><init>(Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    return-object v0
.end method

.method private getCurrentSelection()Lcom/android/jrdsettings/DreamBackend$DreamInfo;
    .locals 3

    .prologue
    .line 352
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 353
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;

    .line 354
    .local v0, dreamInfo:Lcom/android/jrdsettings/DreamBackend$DreamInfo;
    iget-boolean v2, v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 357
    .end local v0           #dreamInfo:Lcom/android/jrdsettings/DreamBackend$DreamInfo;
    :goto_1
    return-object v0

    .line 352
    .restart local v0       #dreamInfo:Lcom/android/jrdsettings/DreamBackend$DreamInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0           #dreamInfo:Lcom/android/jrdsettings/DreamBackend$DreamInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 301
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;

    .line 302
    .local v0, dreamInfo:Lcom/android/jrdsettings/DreamBackend$DreamInfo;
    const-string v6, "getView(%s)"

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    aput-object v10, v9, v7

    #calls: Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v6, v9}, Lcom/android/jrdsettings/DreamSettings;->access$400(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 304
    .local v2, row:Landroid/view/View;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 307
    const v6, 0x1020006

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    const v6, 0x1020016

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const v6, 0x1020019

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 314
    .local v1, radioButton:Landroid/widget/RadioButton;
    iget-boolean v6, v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 315
    new-instance v6, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter$1;-><init>(Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 323
    iget-object v6, v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    .line 324
    .local v5, showSettings:Z
    :goto_1
    const v6, 0x7f0b000c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 325
    .local v4, settingsDivider:Landroid/view/View;
    if-eqz v5, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 327
    const v6, 0x102001a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 328
    .local v3, settingsButton:Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-boolean v6, v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v6, :cond_4

    const/high16 v6, 0x3f80

    :goto_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 330
    iget-boolean v6, v0, Lcom/android/jrdsettings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    new-instance v6, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter$2;

    invoke-direct {v6, p0, v2}, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter$2;-><init>(Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    return-object v2

    .line 303
    .end local v1           #radioButton:Landroid/widget/RadioButton;
    .end local v2           #row:Landroid/view/View;
    .end local v3           #settingsButton:Landroid/widget/ImageView;
    .end local v4           #settingsDivider:Landroid/view/View;
    .end local v5           #showSettings:Z
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/jrdsettings/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .restart local v1       #radioButton:Landroid/widget/RadioButton;
    .restart local v2       #row:Landroid/view/View;
    :cond_1
    move v5, v7

    .line 323
    goto :goto_1

    .restart local v4       #settingsDivider:Landroid/view/View;
    .restart local v5       #showSettings:Z
    :cond_2
    move v6, v8

    .line 325
    goto :goto_2

    .restart local v3       #settingsButton:Landroid/widget/ImageView;
    :cond_3
    move v7, v8

    .line 328
    goto :goto_3

    .line 329
    :cond_4
    const v6, 0x3ea8f5c3

    goto :goto_4
.end method
