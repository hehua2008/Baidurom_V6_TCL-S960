.class public Lorg/farng/mp3/filename/FilenameParenthesisIterator;
.super Ljava/lang/Object;
.source "FilenameParenthesisIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private afterIterator:Ljava/util/Iterator;

.field private beforeIterator:Ljava/util/Iterator;

.field private middleIterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lorg/farng/mp3/filename/FilenameParenthesis;)V
    .locals 1
    .parameter "filenameParenthesis"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->afterIterator:Ljava/util/Iterator;

    .line 21
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->beforeIterator:Ljava/util/Iterator;

    .line 25
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->middleIterator:Ljava/util/Iterator;

    .line 34
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->beforeIterator:Ljava/util/Iterator;

    .line 37
    :cond_0
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameParenthesis;->getMiddleComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameParenthesis;->getMiddleComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->middleIterator:Ljava/util/Iterator;

    .line 40
    :cond_1
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->afterIterator:Ljava/util/Iterator;

    .line 43
    :cond_2
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, nextFlag:Z
    iget-object v3, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->beforeIterator:Ljava/util/Iterator;

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->beforeIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 56
    :cond_0
    iget-object v3, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->middleIterator:Ljava/util/Iterator;

    if-eqz v3, :cond_2

    .line 57
    if-nez v0, :cond_1

    iget-object v3, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->middleIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v0, v2

    .line 59
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->afterIterator:Ljava/util/Iterator;

    if-eqz v3, :cond_4

    .line 60
    if-nez v0, :cond_3

    iget-object v3, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->afterIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v0, v2

    .line 62
    :cond_4
    :goto_1
    return v0

    :cond_5
    move v0, v1

    .line 57
    goto :goto_0

    :cond_6
    move v0, v1

    .line 60
    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->beforeIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->beforeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->beforeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->middleIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->middleIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->middleIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->afterIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->afterIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameParenthesisIterator;->afterIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration has no more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method remove() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
