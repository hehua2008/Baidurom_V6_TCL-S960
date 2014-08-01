.class public Lorg/apache/commons/collections/ExtendedProperties;
.super Ljava/util/Hashtable;
.source "ExtendedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;,
        Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    }
.end annotation


# static fields
.field protected static final END_TOKEN:Ljava/lang/String; = "}"

.field protected static final START_TOKEN:Ljava/lang/String; = "${"

.field protected static include:Ljava/lang/String;


# instance fields
.field protected basePath:Ljava/lang/String;

.field private defaults:Lorg/apache/commons/collections/ExtendedProperties;

.field protected file:Ljava/lang/String;

.field protected fileSeparator:Ljava/lang/String;

.field protected isInitialized:Z

.field protected keysAsListed:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const-string v0, "include"

    sput-object v0, Lorg/apache/commons/collections/ExtendedProperties;->include:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 165
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    .line 443
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "file"
    .parameter "defaultFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 462
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 165
    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    .line 170
    iput-boolean v5, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    .line 463
    iput-object p1, p0, Lorg/apache/commons/collections/ExtendedProperties;->file:Ljava/lang/String;

    .line 465
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->basePath:Ljava/lang/String;

    .line 466
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->basePath:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/collections/ExtendedProperties;->basePath:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->basePath:Ljava/lang/String;

    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    .end local v0           #in:Ljava/io/FileInputStream;
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 474
    if-eqz v1, :cond_0

    .line 475
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 480
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 481
    new-instance v2, Lorg/apache/commons/collections/ExtendedProperties;

    invoke-direct {v2, p2}, Lorg/apache/commons/collections/ExtendedProperties;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    .line 483
    :cond_1
    return-void

    .line 473
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v0       #in:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    .line 474
    :goto_1
    if-eqz v0, :cond_2

    .line 475
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 473
    :cond_2
    :goto_2
    throw v2

    .line 477
    :catch_0
    move-exception v3

    goto :goto_2

    .end local v0           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 473
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v0       #in:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method static access$000(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    invoke-static {p0}, Lorg/apache/commons/collections/ExtendedProperties;->endsWithSlash(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addPropertyDirect(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    return-void
.end method

.method private addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 693
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 695
    .local v0, current:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 697
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 698
    .local v1, v:Ljava/util/Vector;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 699
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 700
    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .end local v0           #current:Ljava/lang/Object;
    .end local v1           #v:Ljava/util/Vector;
    :goto_0
    return-void

    .line 702
    .restart local v0       #current:Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 704
    check-cast v0, Ljava/util/Vector;

    .end local v0           #current:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 708
    .restart local v0       #current:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 709
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static convertProperties(Ljava/util/Properties;)Lorg/apache/commons/collections/ExtendedProperties;
    .locals 4
    .parameter "props"

    .prologue
    .line 1622
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties;

    invoke-direct {v0}, Lorg/apache/commons/collections/ExtendedProperties;-><init>()V

    .line 1624
    .local v0, c:Lorg/apache/commons/collections/ExtendedProperties;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1629
    return-object v0

    .line 1625
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1626
    .local v2, s:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections/ExtendedProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static countPreceding(Ljava/lang/String;IC)I
    .locals 2
    .parameter "line"
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 322
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 327
    :cond_0
    add-int/lit8 v1, p1, -0x1

    sub-int/2addr v1, v0

    return v1

    .line 323
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p2, :cond_0

    .line 322
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static endsWithSlash(Ljava/lang/String;)Z
    .locals 3
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    .line 334
    const-string v1, "\\"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x5c

    invoke-static {p0, v1, v2}, Lorg/apache/commons/collections/ExtendedProperties;->countPreceding(Ljava/lang/String;IC)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x5c

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 292
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 293
    .local v1, c:C
    const/16 v3, 0x2c

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_2

    .line 294
    :cond_1
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 295
    add-int/lit8 v2, v2, 0x1

    .line 291
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    const/16 v5, 0x5c

    .line 305
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_0

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 307
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 308
    .local v1, c1:C
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 309
    .local v2, c2:C
    if-ne v1, v5, :cond_1

    if-ne v2, v5, :cond_1

    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 306
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 645
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v0, p2

    .line 646
    check-cast v0, Ljava/lang/String;

    .line 647
    .local v0, str:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 649
    new-instance v2, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;

    invoke-direct {v2, v0}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;-><init>(Ljava/lang/String;)V

    .line 650
    .local v2, tokenizer:Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    .end local v0           #str:Ljava/lang/String;
    .end local v2           #tokenizer:Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    .line 664
    return-void

    .line 651
    .restart local v0       #str:Ljava/lang/String;
    .restart local v2       #tokenizer:Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/collections/ExtendedProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 656
    .end local v1           #token:Ljava/lang/String;
    .end local v2           #tokenizer:Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections/ExtendedProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 659
    .end local v0           #str:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public clearProperty(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 805
    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .end local v0           #i:I
    :cond_0
    return-void

    .line 800
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 801
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 799
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public combine(Lorg/apache/commons/collections/ExtendedProperties;)V
    .locals 3
    .parameter "props"

    .prologue
    .line 784
    invoke-virtual {p1}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    return-void

    .line 785
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 786
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/ExtendedProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public display()V
    .locals 6

    .prologue
    .line 894
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 896
    .local v0, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 901
    return-void

    .line 897
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 898
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 899
    .local v2, value:Ljava/lang/Object;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1121
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1123
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 1124
    check-cast v2, Ljava/lang/Boolean;

    .line 1136
    .end local v2           #value:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1126
    .restart local v2       #value:Ljava/lang/Object;
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1127
    check-cast v2, Ljava/lang/String;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/ExtendedProperties;->testBoolean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1128
    .local v1, s:Ljava/lang/String;
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v0, b:Ljava/lang/Boolean;
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 1130
    goto :goto_0

    .line 1132
    .end local v0           #b:Ljava/lang/Boolean;
    .end local v1           #s:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/Object;
    :cond_1
    if-nez v2, :cond_3

    .line 1133
    iget-object v3, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v3, :cond_2

    .line 1134
    iget-object v3, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v3, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, p2

    .line 1136
    goto :goto_0

    .line 1139
    :cond_3
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\' doesn\'t map to a Boolean object"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 1088
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1089
    .local v0, b:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1092
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1106
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 4
    .parameter "key"

    .prologue
    .line 1180
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v0

    .line 1181
    .local v0, b:Ljava/lang/Byte;
    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    .line 1184
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1200
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1216
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1218
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    .line 1219
    check-cast v1, Ljava/lang/Byte;

    .line 1230
    .end local v1           #value:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1221
    .restart local v1       #value:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1222
    new-instance v0, Ljava/lang/Byte;

    check-cast v1, Ljava/lang/String;

    .end local v1           #value:Ljava/lang/Object;
    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v0, b:Ljava/lang/Byte;
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1224
    goto :goto_0

    .line 1226
    .end local v0           #b:Ljava/lang/Byte;
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_3

    .line 1227
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v2, :cond_2

    .line 1228
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 1230
    goto :goto_0

    .line 1233
    :cond_3
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' doesn\'t map to a Byte object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .parameter "key"

    .prologue
    .line 1558
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    .line 1559
    .local v0, d:Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 1560
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 1562
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1578
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1594
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1596
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_0

    .line 1597
    check-cast v1, Ljava/lang/Double;

    .line 1608
    .end local v1           #value:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1599
    .restart local v1       #value:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1600
    new-instance v0, Ljava/lang/Double;

    check-cast v1, Ljava/lang/String;

    .end local v1           #value:Ljava/lang/Object;
    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v0, d:Ljava/lang/Double;
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1602
    goto :goto_0

    .line 1604
    .end local v0           #d:Ljava/lang/Double;
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_3

    .line 1605
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v2, :cond_2

    .line 1606
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 1608
    goto :goto_0

    .line 1611
    :cond_3
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' doesn\'t map to a Double object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 4
    .parameter "key"

    .prologue
    .line 1488
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    .line 1489
    .local v0, f:Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 1490
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 1492
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1508
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1524
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1526
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 1527
    check-cast v1, Ljava/lang/Float;

    .line 1538
    .end local v1           #value:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1529
    .restart local v1       #value:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1530
    new-instance v0, Ljava/lang/Float;

    check-cast v1, Ljava/lang/String;

    .end local v1           #value:Ljava/lang/Object;
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v0, f:Ljava/lang/Float;
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1532
    goto :goto_0

    .line 1534
    .end local v0           #f:Ljava/lang/Float;
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_3

    .line 1535
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v2, :cond_2

    .line 1536
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 1538
    goto :goto_0

    .line 1541
    :cond_3
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' doesn\'t map to a Float object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInclude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lorg/apache/commons/collections/ExtendedProperties;->include:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 1315
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1327
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 4
    .parameter "key"

    .prologue
    .line 1343
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 1344
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1345
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1347
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1363
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 1365
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1368
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1384
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1386
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1387
    check-cast v1, Ljava/lang/Integer;

    .line 1398
    .end local v1           #value:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1389
    .restart local v1       #value:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1390
    new-instance v0, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/String;

    .end local v1           #value:Ljava/lang/Object;
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1392
    goto :goto_0

    .line 1394
    .end local v0           #i:Ljava/lang/Integer;
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_3

    .line 1395
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v2, :cond_2

    .line 1396
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 1398
    goto :goto_0

    .line 1401
    :cond_3
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' doesn\'t map to a Integer object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getKeys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .parameter "prefix"

    .prologue
    .line 827
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 828
    .local v1, keys:Ljava/util/Iterator;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v2, matchingKeys:Ljava/util/ArrayList;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 837
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    return-object v3

    .line 831
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 833
    .local v0, key:Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .parameter "key"

    .prologue
    .line 1418
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 1419
    .local v0, l:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1420
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 1422
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1438
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1454
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1456
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 1457
    check-cast v1, Ljava/lang/Long;

    .line 1468
    .end local v1           #value:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1459
    .restart local v1       #value:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1460
    new-instance v0, Ljava/lang/Long;

    check-cast v1, Ljava/lang/String;

    .end local v1           #value:Ljava/lang/Object;
    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1461
    .local v0, l:Ljava/lang/Long;
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1462
    goto :goto_0

    .line 1464
    .end local v0           #l:Ljava/lang/Long;
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_3

    .line 1465
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v2, :cond_2

    .line 1466
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 1468
    goto :goto_0

    .line 1471
    :cond_3
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' doesn\'t map to a Long object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1
    .parameter "key"

    .prologue
    .line 956
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 10
    .parameter "key"
    .parameter "defaults"

    .prologue
    .line 974
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 977
    .local v6, tokens:[Ljava/lang/String;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3, p2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 978
    .local v3, props:Ljava/util/Properties;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-lt v1, v7, :cond_0

    .line 989
    return-object v3

    .line 979
    :cond_0
    aget-object v5, v6, v1

    .line 980
    .local v5, token:Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 981
    .local v0, equalSign:I
    if-lez v0, :cond_1

    .line 982
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 983
    .local v2, pkey:Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 984
    .local v4, pvalue:Ljava/lang/String;
    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 986
    .end local v2           #pkey:Ljava/lang/String;
    .end local v4           #pvalue:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\' does not contain "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "an equals sign"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 614
    .local v0, obj:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 617
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 622
    :cond_0
    return-object v0
.end method

.method public getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1288
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Short;

    if-eqz v2, :cond_0

    .line 1289
    check-cast v1, Ljava/lang/Short;

    .line 1300
    .end local v1           #value:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1291
    .restart local v1       #value:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1292
    new-instance v0, Ljava/lang/Short;

    check-cast v1, Ljava/lang/String;

    .end local v1           #value:Ljava/lang/Object;
    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v0, s:Ljava/lang/Short;
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1294
    goto :goto_0

    .line 1296
    .end local v0           #s:Ljava/lang/Short;
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_3

    .line 1297
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v2, :cond_2

    .line 1298
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 1300
    goto :goto_0

    .line 1303
    :cond_3
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' doesn\'t map to a Short object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 4
    .parameter "key"

    .prologue
    .line 1250
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    .line 1251
    .local v0, s:Ljava/lang/Short;
    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    .line 1254
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 926
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 928
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 929
    check-cast v0, Ljava/lang/String;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 938
    :goto_0
    return-object v1

    .line 931
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_2

    .line 932
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_1

    .line 933
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 935
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 937
    :cond_2
    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_3

    .line 938
    check-cast v0, Ljava/util/Vector;

    .end local v0           #value:Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 940
    .restart local v0       #value:Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' doesn\'t map to a String object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    .line 1002
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1006
    .local v2, value:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1007
    new-instance v3, Ljava/util/Vector;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    .line 1008
    .local v3, vector:Ljava/util/Vector;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1023
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 1024
    .local v1, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-lt v0, v4, :cond_4

    .line 1028
    .end local v0           #i:I
    .end local v1           #tokens:[Ljava/lang/String;
    .end local v3           #vector:Ljava/util/Vector;
    :goto_2
    return-object v1

    .line 1010
    :cond_0
    instance-of v4, v2, Ljava/util/Vector;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 1011
    check-cast v3, Ljava/util/Vector;

    .restart local v3       #vector:Ljava/util/Vector;
    goto :goto_0

    .line 1013
    .end local v3           #vector:Ljava/util/Vector;
    :cond_1
    if-nez v2, :cond_3

    .line 1014
    iget-object v4, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v4, :cond_2

    .line 1015
    iget-object v4, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v4, p1}, Lorg/apache/commons/collections/ExtendedProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1017
    :cond_2
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/String;

    goto :goto_2

    .line 1020
    :cond_3
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' doesn\'t map to a String/Vector object"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1025
    .restart local v0       #i:I
    .restart local v1       #tokens:[Ljava/lang/String;
    .restart local v3       #vector:Ljava/util/Vector;
    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v0

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getVector(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .parameter "key"

    .prologue
    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1055
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1057
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 1058
    check-cast v1, Ljava/util/Vector;

    .line 1070
    .end local v1           #value:Ljava/lang/Object;
    .end local p2
    :goto_0
    return-object v1

    .line 1060
    .restart local v1       #value:Ljava/lang/Object;
    .restart local p2
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1061
    new-instance v0, Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    .line 1062
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1063
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1064
    goto :goto_0

    .line 1066
    .end local v0           #v:Ljava/util/Vector;
    :cond_1
    if-nez v1, :cond_4

    .line 1067
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v2, :cond_2

    .line 1068
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v1

    goto :goto_0

    .line 1070
    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/Vector;

    .end local p2
    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    :cond_3
    move-object v1, p2

    goto :goto_0

    .line 1073
    .restart local p2
    :cond_4
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' doesn\'t map to a Vector object"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected interpolate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "base"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .parameter "base"
    .parameter "priorVariables"

    .prologue
    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 217
    if-nez p1, :cond_0

    .line 283
    :goto_0
    return-object v9

    .line 223
    :cond_0
    if-nez p2, :cond_1

    .line 224
    new-instance p2, Ljava/util/ArrayList;

    .end local p2
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .restart local p2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_1
    const/4 v0, -0x1

    .line 229
    .local v0, begin:I
    const/4 v1, -0x1

    .line 230
    .local v1, end:I
    const-string v10, "}"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v4, v10, 0x0

    .line 231
    .local v4, prec:I
    const/4 v8, 0x0

    .line 232
    .local v8, variable:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v6, result:Ljava/lang/StringBuffer;
    :goto_1
    const-string v10, "${"

    const-string v11, "}"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v12, :cond_2

    const-string v10, "}"

    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gt v1, v12, :cond_3

    .line 281
    :cond_2
    const-string v9, "}"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 237
    :cond_3
    const-string v10, "}"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v10, "${"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v0

    invoke-virtual {p1, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 241
    invoke-interface {p2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 242
    const/4 v9, 0x0

    invoke-interface {p2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, initialBase:Ljava/lang/String;
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    .local v5, priorVariableSb:Ljava/lang/StringBuffer;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 255
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "infinite loop in property interpolation of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 249
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 250
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 251
    const-string v9, "->"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 260
    .end local v2           #initialBase:Ljava/lang/String;
    .end local v3           #it:Ljava/util/Iterator;
    .end local v5           #priorVariableSb:Ljava/lang/StringBuffer;
    :cond_6
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {p0, v8}, Lorg/apache/commons/collections/ExtendedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 265
    .local v7, value:Ljava/lang/Object;
    if-eqz v7, :cond_7

    .line 266
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, p2}, Lorg/apache/commons/collections/ExtendedProperties;->interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {p2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 279
    :goto_3
    move v4, v1

    goto/16 :goto_1

    .line 273
    :cond_7
    iget-object v10, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v10, v8, v9}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 274
    iget-object v10, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v10, v8}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 277
    :cond_8
    const-string v10, "${"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10
    .parameter "input"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    monitor-enter p0

    const/4 v5, 0x0

    .line 533
    .local v5, reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    if-eqz p2, :cond_5

    .line 535
    :try_start_0
    new-instance v6, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 542
    .end local v5           #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .local v6, reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    :goto_0
    if-nez v6, :cond_4

    .line 544
    :try_start_1
    new-instance v5, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "8859_1"

    invoke-direct {v8, p1, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 555
    .end local v6           #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .restart local v5       #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;->readProperty()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, line:Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 558
    .local v0, equalSign:I
    if-lez v0, :cond_0

    .line 559
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 563
    .local v7, value:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 567
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getInclude()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getInclude()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 569
    const/4 v2, 0x0

    .line 571
    .local v2, file:Ljava/io/File;
    iget-object v8, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 573
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .restart local v2       #file:Ljava/io/File;
    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 587
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v8}, Lorg/apache/commons/collections/ExtendedProperties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 596
    .end local v0           #equalSign:I
    .end local v2           #file:Ljava/io/File;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 599
    .local v1, ex:Ljava/lang/NullPointerException;
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 596
    monitor-exit p0

    return-void

    .line 537
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v8

    move-object v6, v5

    .end local v5           #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .restart local v6       #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    goto :goto_0

    .line 549
    :catch_2
    move-exception v1

    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    new-instance v5, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v6           #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .restart local v5       #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    goto :goto_1

    .line 579
    .end local v1           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #equalSign:I
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_1
    :try_start_5
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 580
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 583
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lorg/apache/commons/collections/ExtendedProperties;->basePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #file:Ljava/io/File;
    goto :goto_2

    .line 590
    .end local v2           #file:Ljava/io/File;
    :cond_3
    invoke-virtual {p0, v3, v7}, Lorg/apache/commons/collections/ExtendedProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 599
    .end local v0           #equalSign:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catchall_0
    move-exception v8

    const/4 v9, 0x1

    :try_start_6
    iput-boolean v9, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 532
    :catchall_1
    move-exception v8

    :goto_3
    monitor-exit p0

    throw v8

    .end local v5           #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .restart local v6       #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6           #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .restart local v5       #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    goto :goto_3

    .end local v5           #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .restart local v6       #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    :cond_4
    move-object v5, v6

    .end local v6           #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .restart local v5       #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    goto/16 :goto_1

    :cond_5
    move-object v6, v5

    .end local v5           #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .restart local v6       #reader:Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    goto/16 :goto_0
.end method

.method public declared-synchronized save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 10
    .parameter "output"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    monitor-enter p0

    if-nez p1, :cond_1

    .line 774
    :cond_0
    monitor-exit p0

    return-void

    .line 741
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 742
    .local v5, theWrtr:Ljava/io/PrintWriter;
    if-eqz p2, :cond_2

    .line 743
    invoke-virtual {v5, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    :cond_2
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 747
    .local v4, theKeys:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 748
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 749
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 750
    .local v6, value:Ljava/lang/Object;
    if-eqz v6, :cond_3

    .line 751
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 752
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 753
    .local v2, currentOutput:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    const-string v9, "="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/Object;
    invoke-static {v6}, Lorg/apache/commons/collections/ExtendedProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    .end local v2           #currentOutput:Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 772
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 738
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #theKeys:Ljava/util/Enumeration;
    .end local v5           #theWrtr:Ljava/io/PrintWriter;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 758
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #theKeys:Ljava/util/Enumeration;
    .restart local v5       #theWrtr:Ljava/io/PrintWriter;
    .restart local v6       #value:Ljava/lang/Object;
    :cond_4
    :try_start_1
    instance-of v9, v6, Ljava/util/Vector;

    if-eqz v9, :cond_3

    .line 759
    move-object v0, v6

    check-cast v0, Ljava/util/Vector;

    move-object v7, v0

    .line 760
    .local v7, values:Ljava/util/Vector;
    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 761
    .local v8, valuesEnum:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 762
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 763
    .local v1, currentElement:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 764
    .restart local v2       #currentOutput:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    const-string v9, "="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    invoke-static {v1}, Lorg/apache/commons/collections/ExtendedProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setInclude(Ljava/lang/String;)V
    .locals 0
    .parameter "inc"

    .prologue
    .line 510
    sput-object p1, Lorg/apache/commons/collections/ExtendedProperties;->include:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->clearProperty(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    return-void
.end method

.method public subset(Ljava/lang/String;)Lorg/apache/commons/collections/ExtendedProperties;
    .locals 7
    .parameter "prefix"

    .prologue
    .line 849
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties;

    invoke-direct {v0}, Lorg/apache/commons/collections/ExtendedProperties;-><init>()V

    .line 850
    .local v0, c:Lorg/apache/commons/collections/ExtendedProperties;
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v2

    .line 851
    .local v2, keys:Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 853
    .local v4, validSubset:Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 883
    if-eqz v4, :cond_4

    .line 886
    .end local v0           #c:Lorg/apache/commons/collections/ExtendedProperties;
    :goto_1
    return-object v0

    .line 854
    .restart local v0       #c:Lorg/apache/commons/collections/ExtendedProperties;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 856
    .local v1, key:Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 857
    if-nez v4, :cond_2

    .line 858
    const/4 v4, 0x1

    .line 867
    :cond_2
    const/4 v3, 0x0

    .local v3, newKey:Ljava/lang/String;
    move-object v5, v1

    .line 868
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 869
    move-object v3, p1

    .line 879
    :goto_2
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyDirect(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v5, v1

    .line 871
    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 886
    .end local v1           #key:Ljava/lang/Object;
    .end local v3           #newKey:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public testBoolean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 1156
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, s:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1159
    :cond_0
    const-string v1, "true"

    .line 1163
    :goto_0
    return-object v1

    .line 1160
    :cond_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1161
    :cond_2
    const-string v1, "false"

    goto :goto_0

    .line 1163
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
