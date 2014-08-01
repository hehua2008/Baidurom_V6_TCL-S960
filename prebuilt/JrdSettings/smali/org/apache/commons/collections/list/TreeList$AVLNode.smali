.class Lorg/apache/commons/collections/list/TreeList$AVLNode;
.super Ljava/lang/Object;
.source "TreeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AVLNode"
.end annotation


# instance fields
.field private height:I

.field private left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field private leftIsPrevious:Z

.field private relativePosition:I

.field private right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field private rightIsNext:Z

.field private value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V
    .locals 1
    .parameter "relativePosition"
    .parameter "obj"
    .parameter "rightFollower"
    .parameter "leftFollower"

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 291
    iput-object p2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 292
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    .line 293
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 294
    iput-object p3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 295
    iput-object p4, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 296
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 265
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 265
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    return v0
.end method

.method static access$200(Lorg/apache/commons/collections/list/TreeList$AVLNode;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method private balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 573
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 589
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tree inconsistent!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 582
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p0

    .line 587
    .end local p0
    :goto_0
    :pswitch_1
    return-object p0

    .line 584
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-gez v0, :cond_1

    .line 585
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 587
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p0

    goto :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getHeight(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I
    .locals 1
    .parameter "node"

    .prologue
    .line 628
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    goto :goto_0
.end method

.method private getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    goto :goto_0
.end method

.method private getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I
    .locals 1
    .parameter "node"

    .prologue
    .line 597
    if-nez p1, :cond_0

    .line 598
    const/4 v0, 0x0

    .line 600
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_0
.end method

.method private getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    goto :goto_0
.end method

.method private heightRightMinusLeft()I
    .locals 2

    .prologue
    .line 635
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v0

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 5
    .parameter "indexRelativeToMe"
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 411
    move-object v0, p0

    .line 413
    .local v0, ret:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 414
    new-instance v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;

    const/4 v2, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v1, v2, p2, p0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 419
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-ltz v1, :cond_0

    .line 420
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 422
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 423
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 424
    return-object v0

    .line 416
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    goto :goto_0
.end method

.method private insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 5
    .parameter "indexRelativeToMe"
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 428
    move-object v0, p0

    .line 430
    .local v0, ret:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 431
    new-instance v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v1, v2, p2, v3, p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 435
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v1, :cond_0

    .line 436
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 438
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 439
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 440
    return-object v0

    .line 433
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    goto :goto_0
.end method

.method private max()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p0

    goto :goto_0
.end method

.method private min()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .prologue
    .line 473
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p0

    goto :goto_0
.end method

.method private recalcHeight()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 619
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    .line 622
    return-void

    .line 619
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iget v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    goto :goto_1
.end method

.method private removeMax()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 2

    .prologue
    .line 504
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 505
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 508
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_1

    .line 509
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 511
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 512
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_0
.end method

.method private removeMin()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 2

    .prologue
    .line 516
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 517
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 520
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_1

    .line 521
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 523
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 524
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_0
.end method

.method private removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 528
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v5

    if-nez v5, :cond_0

    move-object p0, v4

    .line 565
    :goto_0
    return-object p0

    .line 530
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v5

    if-nez v5, :cond_3

    .line 531
    iget v5, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v5, :cond_1

    .line 532
    iget-object v5, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v6, v5, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    iget v7, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    iget v8, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v8, :cond_2

    :goto_1
    add-int/2addr v2, v7

    add-int/2addr v2, v6

    iput v2, v5, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 534
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 535
    iget-object p0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 532
    goto :goto_1

    .line 537
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v5

    if-nez v5, :cond_5

    .line 538
    iget-object v5, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v6, v5, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    iget v7, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    iget v8, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v8, :cond_4

    :goto_2
    sub-int v2, v7, v2

    add-int/2addr v2, v6

    iput v2, v5, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 539
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 540
    iget-object p0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    goto :goto_0

    :cond_4
    move v2, v3

    .line 538
    goto :goto_2

    .line 543
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v2

    if-lez v2, :cond_8

    .line 544
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    .line 545
    .local v1, rightMin:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    iget-object v2, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 546
    iget-boolean v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v2, :cond_6

    .line 547
    iget-object v2, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 549
    :cond_6
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 550
    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v2, :cond_7

    .line 551
    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 564
    .end local v1           #rightMin:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    :cond_7
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    goto :goto_0

    .line 554
    :cond_8
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 555
    .local v0, leftMax:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    iget-object v2, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 556
    iget-boolean v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v2, :cond_9

    .line 557
    iget-object v2, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 559
    :cond_9
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 560
    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v2, :cond_7

    .line 561
    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_3
.end method

.method private rotateLeft()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 7

    .prologue
    .line 639
    iget-object v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 640
    .local v3, newTop:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v5

    invoke-direct {v5}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 642
    .local v0, movedNode:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    iget v5, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v6

    add-int v4, v5, v6

    .line 643
    .local v4, newTopPosition:I
    iget v5, v3, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    neg-int v2, v5

    .line 644
    .local v2, myNewPosition:I
    invoke-direct {p0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v5

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v6

    add-int v1, v5, v6

    .line 646
    .local v1, movedPosition:I
    invoke-direct {p0, v0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 647
    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 649
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 650
    invoke-direct {p0, p0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 651
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 652
    return-object v3
.end method

.method private rotateRight()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 7

    .prologue
    .line 656
    iget-object v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 657
    .local v3, newTop:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v5

    invoke-direct {v5}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 659
    .local v0, movedNode:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    iget v5, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v6

    add-int v4, v5, v6

    .line 660
    .local v4, newTopPosition:I
    iget v5, v3, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    neg-int v2, v5

    .line 661
    .local v2, myNewPosition:I
    invoke-direct {p0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v5

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v6

    add-int v1, v5, v6

    .line 663
    .local v1, movedPosition:I
    invoke-direct {p0, v0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 664
    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 666
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 667
    invoke-direct {p0, p0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 668
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 669
    return-object v3
.end method

.method private setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V
    .locals 1
    .parameter "node"
    .parameter "previous"

    .prologue
    .line 673
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 674
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_1

    .end local p2
    :goto_1
    iput-object p2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 675
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 676
    return-void

    .line 673
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 674
    goto :goto_1
.end method

.method private setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I
    .locals 1
    .parameter "node"
    .parameter "newOffest"

    .prologue
    .line 607
    if-nez p1, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    .line 610
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v0

    .line 611
    .local v0, oldOffset:I
    iput p2, p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_0
.end method

.method private setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V
    .locals 1
    .parameter "node"
    .parameter "next"

    .prologue
    .line 679
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    .line 680
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_1

    .end local p2
    :goto_1
    iput-object p2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 681
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 682
    return-void

    .line 679
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 680
    goto :goto_1
.end method


# virtual methods
.method get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 3
    .parameter "index"

    .prologue
    .line 321
    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    sub-int v0, p1, v2

    .line 323
    .local v0, indexRelativeToMe:I
    if-nez v0, :cond_0

    .line 331
    .end local p0
    :goto_0
    return-object p0

    .line 327
    .restart local p0
    :cond_0
    if-gez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    .line 328
    .local v1, nextNode:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    :goto_1
    if-nez v1, :cond_2

    .line 329
    const/4 p0, 0x0

    goto :goto_0

    .line 327
    .end local v1           #nextNode:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    goto :goto_1

    .line 331
    .restart local v1       #nextNode:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    :cond_2
    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p0

    goto :goto_0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 4
    .parameter "object"
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 338
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v3, v3, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v3, p2

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    .line 340
    .local v0, result:I
    if-eq v0, v1, :cond_0

    .line 350
    .end local v0           #result:I
    :goto_0
    return v0

    .line 344
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    move v0, p2

    .line 345
    goto :goto_0

    .line 344
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 347
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 348
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v2, v2, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 350
    goto :goto_0
.end method

.method insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 2
    .parameter "index"
    .parameter "obj"

    .prologue
    .line 401
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    sub-int v0, p1, v1

    .line 403
    .local v0, indexRelativeToMe:I
    if-gtz v0, :cond_0

    .line 404
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    .line 406
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    goto :goto_0
.end method

.method next()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_1

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 378
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_0
.end method

.method previous()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_1

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 390
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_0
.end method

.method remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 3
    .parameter "index"

    .prologue
    .line 483
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    sub-int v0, p1, v1

    .line 485
    .local v0, indexRelativeToMe:I
    if-nez v0, :cond_0

    .line 486
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    .line 500
    :goto_0
    return-object v1

    .line 488
    :cond_0
    if-lez v0, :cond_2

    .line 489
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v2, v2, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 490
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v1, :cond_1

    .line 491
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 499
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 500
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    goto :goto_0

    .line 494
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v2, v2, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 495
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v1, :cond_1

    .line 496
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_1
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 313
    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 314
    return-void
.end method

.method toArray([Ljava/lang/Object;I)V
    .locals 2
    .parameter "array"
    .parameter "index"

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 361
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    .line 364
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    .line 367
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 740
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "AVLNode("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", faedelung "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
