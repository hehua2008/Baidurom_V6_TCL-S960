.class public Lorg/farng/mp3/filename/FilenameDelimiterIterator;
.super Ljava/lang/Object;
.source "FilenameDelimiterIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private afterIterator:Ljava/util/Iterator;

.field private beforeIterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lorg/farng/mp3/filename/FilenameDelimiter;)V
    .locals 1
    .parameter "filenameDelimiter"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->afterIterator:Ljava/util/Iterator;

    .line 21
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->beforeIterator:Ljava/util/Iterator;

    .line 30
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->beforeIterator:Ljava/util/Iterator;

    .line 33
    :cond_0
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->afterIterator:Ljava/util/Iterator;

    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, nextFlag:Z
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->beforeIterator:Ljava/util/Iterator;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->beforeIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 49
    :cond_0
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->afterIterator:Ljava/util/Iterator;

    if-eqz v1, :cond_2

    .line 50
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->afterIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 52
    :cond_2
    :goto_0
    return v0

    .line 50
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->beforeIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->beforeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->beforeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->afterIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->afterIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameDelimiterIterator;->afterIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration has no more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method remove() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
