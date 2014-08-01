.class public Lorg/cybergarage/http/HTTPPacket;
.super Ljava/lang/Object;
.source "HTTPPacket.java"


# instance fields
.field private content:[B

.field private contentInput:Ljava/io/InputStream;

.field private firstLine:Ljava/lang/String;

.field private httpHeaderList:Ljava/util/Vector;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 531
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 583
    iput-object v1, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 100
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 531
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 583
    iput-object v1, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 113
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    .line 115
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPPacket;)V
    .locals 2
    .parameter "httpPacket"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 531
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 583
    iput-object v1, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 106
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Lorg/cybergarage/http/HTTPPacket;)V

    .line 108
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 109
    return-void
.end method

.method private readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 6
    .parameter "in"

    .prologue
    .line 152
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    .local v1, lineBuf:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 156
    .local v2, readBuf:[B
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 157
    .local v3, readLen:I
    :goto_0
    if-lez v3, :cond_0

    .line 158
    const/4 v4, 0x0

    aget-byte v4, v2, v4
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 173
    .end local v3           #readLen:I
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 160
    .restart local v3       #readLen:I
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    aget-byte v4, v2, v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    .line 161
    const/4 v4, 0x0

    aget-byte v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 169
    .end local v3           #readLen:I
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_1

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private setFirstLine(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 342
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 343
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 385
    new-instance v0, Lorg/cybergarage/http/HTTPHeader;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .local v0, header:Lorg/cybergarage/http/HTTPHeader;
    iget-object v1, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method public addHeader(Lorg/cybergarage/http/HTTPHeader;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 380
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 381
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 409
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 410
    return-void
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 620
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, contentType:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 622
    const-string v0, ""

    .line 637
    :cond_0
    :goto_0
    return-object v0

    .line 623
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 624
    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 625
    .local v2, charSetIdx:I
    if-gez v2, :cond_2

    .line 626
    const-string v0, ""

    goto :goto_0

    .line 627
    :cond_2
    const-string v4, "charset"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v1, v4, 0x1

    .line 628
    .local v1, charSetEndIdx:I
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    .line 629
    .local v0, charSet:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_3

    .line 630
    const-string v0, ""

    goto :goto_0

    .line 631
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    .line 632
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 633
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_5

    .line 634
    const-string v0, ""

    goto :goto_0

    .line 635
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    .line 636
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    return-object v0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 651
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentRange()[J
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 741
    const/4 v7, 0x3

    new-array v4, v7, [J

    .line 742
    .local v4, range:[J
    const-wide/16 v7, 0x0

    aput-wide v7, v4, v11

    aput-wide v7, v4, v10

    aput-wide v7, v4, v9

    .line 743
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasContentRange()Z

    move-result v7

    if-nez v7, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-object v4

    .line 745
    :cond_1
    const-string v7, "Content-Range"

    invoke-virtual {p0, v7}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 747
    .local v5, rangeLine:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 748
    const-string v7, "Range"

    invoke-virtual {p0, v7}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 749
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 752
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " ="

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .local v6, strToken:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 756
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, bytesStr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 760
    const-string v7, " -"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, firstPosStr:Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 765
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 767
    const-string v7, "-/"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, lastPosStr:Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 772
    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 774
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, lengthStr:Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v7

    goto :goto_0

    .line 771
    .end local v3           #lengthStr:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 764
    .end local v2           #lastPosStr:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public getContentRangeFirstPosition()J
    .locals 3

    .prologue
    .line 784
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 785
    .local v0, range:[J
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getContentRangeForAndroid()[J
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 714
    const/4 v5, 0x3

    new-array v0, v5, [J

    .line 715
    .local v0, range:[J
    const-wide/16 v5, 0x0

    aput-wide v5, v0, v9

    aput-wide v5, v0, v7

    aput-wide v5, v0, v8

    .line 716
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasContentRange()Z

    move-result v5

    if-nez v5, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-object v0

    .line 719
    :cond_1
    const-string v5, "Content-Range"

    invoke-virtual {p0, v5}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, rangeLine:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 721
    const-string v5, "Range"

    invoke-virtual {p0, v5}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 725
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 726
    .local v4, tmpRangesLine:[Ljava/lang/String;
    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 728
    .local v3, tmpRanges:[Ljava/lang/String;
    aget-object v5, v3, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v0, v8

    .line 730
    array-length v5, v3

    if-le v5, v7, :cond_0

    .line 731
    aget-object v5, v3, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, tmpRangeOthers:[Ljava/lang/String;
    aget-object v5, v2, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v0, v7

    .line 733
    array-length v5, v2

    if-le v5, v7, :cond_0

    .line 734
    aget-object v5, v2, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v0, v9

    goto :goto_0
.end method

.method public getContentRangeInstanceLength()J
    .locals 3

    .prologue
    .line 796
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 797
    .local v0, range:[J
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getContentRangeLastPosition()J
    .locals 3

    .prologue
    .line 790
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 791
    .local v0, range:[J
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getContentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 562
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, charSet:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 564
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 571
    :goto_0
    return-object v2

    .line 566
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 571
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    return-object v0
.end method

.method protected getFirstLineToken(I)Ljava/lang/String;
    .locals 5
    .parameter "num"

    .prologue
    .line 352
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    const-string v4, " "

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .local v2, st:Ljava/util/StringTokenizer;
    const-string v0, ""

    .line 354
    .local v0, lastToken:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-gt v1, p1, :cond_0

    .line 355
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 356
    const-string v0, ""

    .line 359
    .end local v0           #lastToken:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 357
    .restart local v0       #lastToken:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeader(I)Lorg/cybergarage/http/HTTPHeader;
    .locals 1
    .parameter "n"

    .prologue
    .line 391
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPHeader;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;
    .locals 6
    .parameter "name"

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v3

    .line 397
    .local v3, nHeaders:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 398
    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPPacket;->getHeader(I)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 399
    .local v0, header:Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, headerName:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 403
    .end local v0           #header:Lorg/cybergarage/http/HTTPHeader;
    .end local v1           #headerName:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 397
    .restart local v0       #header:Lorg/cybergarage/http/HTTPHeader;
    .restart local v1       #headerName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v0           #header:Lorg/cybergarage/http/HTTPHeader;
    .end local v1           #headerName:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHeaderString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 516
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    .local v3, str:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 519
    .local v2, nHeaders:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 520
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(I)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 521
    .local v0, header:Lorg/cybergarage/http/HTTPHeader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v0           #header:Lorg/cybergarage/http/HTTPHeader;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 445
    .local v0, header:Lorg/cybergarage/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 446
    const-string v1, ""

    .line 447
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    const-string v0, "HOST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerHeaderValue(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 497
    .local v0, header:Lorg/cybergarage/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 498
    const/4 v1, 0x0

    .line 499
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/StringUtil;->toInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLongHeaderValue(Ljava/lang/String;)J
    .locals 3
    .parameter "name"

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 505
    .local v0, header:Lorg/cybergarage/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 506
    const-wide/16 v1, 0x0

    .line 507
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/StringUtil;->toLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getNHeaders()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 481
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "startWidth"
    .parameter "endWidth"

    .prologue
    const/4 v2, 0x1

    .line 471
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, headerValue:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 473
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 474
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 476
    :cond_1
    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 660
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentInputStream()Z
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentRange()Z
    .locals 1

    .prologue
    .line 699
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstLine()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransferEncoding()Z
    .locals 1

    .prologue
    .line 886
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->clearHeaders()V

    .line 126
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 128
    return-void
.end method

.method public isChunked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 901
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasTransferEncoding()Z

    move-result v2

    if-nez v2, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v1

    .line 903
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, transEnc:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 906
    const-string v1, "Chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCloseConnection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 675
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasConnection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v1

    .line 677
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, connection:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 680
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isKeepAliveConnection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 685
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasConnection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v1

    .line 687
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, connection:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 690
    const-string v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public read(Lorg/cybergarage/http/HTTPSocket;)Z
    .locals 1
    .parameter "httpSock"

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->init()V

    .line 331
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Lorg/cybergarage/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method protected set(Lorg/cybergarage/http/HTTPPacket;)V
    .locals 4
    .parameter "httpPacket"

    .prologue
    .line 313
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->clearHeaders()V

    .line 316
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 317
    .local v2, nHeaders:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 318
    invoke-virtual {p1, v1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(I)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 319
    .local v0, header:Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->addHeader(Lorg/cybergarage/http/HTTPHeader;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v0           #header:Lorg/cybergarage/http/HTTPHeader;
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getContent()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/http/HTTPPacket;->setContent([B)V

    .line 322
    return-void
.end method

.method protected set(Ljava/io/InputStream;)Z
    .locals 1
    .parameter "in"

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/io/InputStream;Z)Z
    .locals 30
    .parameter "in"
    .parameter "onlyHeaders"

    .prologue
    .line 179
    :try_start_0
    new-instance v22, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    .local v22, reader:Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v13

    .line 182
    .local v13, firstLine:Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v28

    if-gtz v28, :cond_1

    .line 183
    :cond_0
    const/16 v28, 0x0

    .line 298
    .end local v13           #firstLine:Ljava/lang/String;
    .end local v22           #reader:Ljava/io/BufferedInputStream;
    :goto_0
    return v28

    .line 184
    .restart local v13       #firstLine:Ljava/lang/String;
    .restart local v22       #reader:Ljava/io/BufferedInputStream;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 187
    new-instance v16, Lorg/cybergarage/http/HTTPStatus;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lorg/cybergarage/http/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 188
    .local v16, httpStatus:Lorg/cybergarage/http/HTTPStatus;
    invoke-virtual/range {v16 .. v16}, Lorg/cybergarage/http/HTTPStatus;->getStatusCode()I

    move-result v27

    .line 189
    .local v27, statCode:I
    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 196
    .local v15, headerLine:Ljava/lang/String;
    :goto_1
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_3

    .line 197
    new-instance v14, Lorg/cybergarage/http/HTTPHeader;

    invoke-direct {v14, v15}, Lorg/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 198
    .local v14, header:Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {v14}, Lorg/cybergarage/http/HTTPHeader;->hasName()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 199
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Lorg/cybergarage/http/HTTPHeader;)V

    .line 200
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 201
    goto :goto_1

    .line 203
    .end local v14           #header:Lorg/cybergarage/http/HTTPHeader;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, actualFirstLine:Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_6

    .line 206
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 212
    .end local v4           #actualFirstLine:Ljava/lang/String;
    .end local v15           #headerLine:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 213
    .restart local v15       #headerLine:Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_7

    .line 214
    new-instance v14, Lorg/cybergarage/http/HTTPHeader;

    invoke-direct {v14, v15}, Lorg/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v14       #header:Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {v14}, Lorg/cybergarage/http/HTTPHeader;->hasName()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Lorg/cybergarage/http/HTTPHeader;)V

    .line 217
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 218
    goto :goto_2

    .line 208
    .end local v14           #header:Lorg/cybergarage/http/HTTPHeader;
    .restart local v4       #actualFirstLine:Ljava/lang/String;
    :cond_6
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 220
    .end local v4           #actualFirstLine:Ljava/lang/String;
    :cond_7
    const/16 v28, 0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 221
    const-string v28, ""

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 222
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 225
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPPacket;->isChunked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 227
    .local v17, isChunkedRequest:Z
    const-wide/16 v10, 0x0

    .line 228
    .local v10, contentLen:J
    const/16 v28, 0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 230
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, chunkSizeLine:Ljava/lang/String;
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v10

    .line 240
    .end local v8           #chunkSizeLine:Ljava/lang/String;
    :goto_3
    :try_start_2
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 242
    .local v9, contentBuf:Ljava/io/ByteArrayOutputStream;
    :goto_4
    const-wide/16 v28, 0x0

    cmp-long v28, v28, v10

    if-gez v28, :cond_13

    .line 243
    invoke-static {}, Lorg/cybergarage/http/HTTP;->getChunkSize()I

    move-result v7

    .line 246
    .local v7, chunkSize:I
    int-to-long v0, v7

    move-wide/from16 v28, v0

    cmp-long v28, v10, v28

    if-lez v28, :cond_e

    int-to-long v0, v7

    move-wide/from16 v28, v0

    :goto_5
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v18, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    .local v18, readBuf:[B
    const-wide/16 v19, 0x0

    .line 249
    .local v19, readCnt:J
    :goto_6
    cmp-long v28, v19, v10

    if-gez v28, :cond_a

    .line 252
    sub-long v5, v10, v19

    .line 253
    .local v5, bufReadLen:J
    int-to-long v0, v7

    move-wide/from16 v28, v0

    cmp-long v28, v28, v5

    if-gez v28, :cond_9

    .line 254
    int-to-long v5, v7

    .line 255
    :cond_9
    const/16 v28, 0x0

    long-to-int v0, v5

    move/from16 v29, v0

    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v21

    .line 256
    .local v21, readLen:I
    if-gez v21, :cond_f

    .line 267
    .end local v5           #bufReadLen:J
    .end local v21           #readLen:I
    :cond_a
    :goto_7
    const/16 v28, 0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 269
    const-wide/16 v25, 0x0

    .line 271
    .local v25, skipLen:J
    :cond_b
    :try_start_4
    const-string v28, "\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v28, v28, v25

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v23

    .line 272
    .local v23, skipCnt:J
    const-wide/16 v28, 0x0

    cmp-long v28, v23, v28

    if-gez v28, :cond_10

    .line 278
    :goto_8
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v8

    .line 281
    .restart local v8       #chunkSizeLine:Ljava/lang/String;
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v10

    :goto_9
    goto :goto_4

    .line 233
    .end local v7           #chunkSize:I
    .end local v9           #contentBuf:Ljava/io/ByteArrayOutputStream;
    .end local v18           #readBuf:[B
    .end local v19           #readCnt:J
    .end local v23           #skipCnt:J
    .end local v25           #skipLen:J
    :cond_c
    const-wide/16 v10, 0x0

    goto/16 :goto_3

    .line 238
    .end local v8           #chunkSizeLine:Ljava/lang/String;
    :cond_d
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPPacket;->getContentLength()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-wide v10

    goto/16 :goto_3

    .restart local v7       #chunkSize:I
    .restart local v9       #contentBuf:Ljava/io/ByteArrayOutputStream;
    :cond_e
    move-wide/from16 v28, v10

    .line 246
    goto :goto_5

    .line 258
    .restart local v5       #bufReadLen:J
    .restart local v18       #readBuf:[B
    .restart local v19       #readCnt:J
    .restart local v21       #readLen:I
    :cond_f
    const/16 v28, 0x0

    :try_start_7
    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 259
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v19, v19, v28

    goto :goto_6

    .line 261
    .end local v21           #readLen:I
    :catch_0
    move-exception v12

    .line 263
    .local v12, e:Ljava/lang/Exception;
    :try_start_8
    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_7

    .line 293
    .end local v5           #bufReadLen:J
    .end local v7           #chunkSize:I
    .end local v9           #contentBuf:Ljava/io/ByteArrayOutputStream;
    .end local v10           #contentLen:J
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #firstLine:Ljava/lang/String;
    .end local v15           #headerLine:Ljava/lang/String;
    .end local v16           #httpStatus:Lorg/cybergarage/http/HTTPStatus;
    .end local v17           #isChunkedRequest:Z
    .end local v18           #readBuf:[B
    .end local v19           #readCnt:J
    .end local v22           #reader:Ljava/io/BufferedInputStream;
    .end local v27           #statCode:I
    :catch_1
    move-exception v12

    .line 294
    .restart local v12       #e:Ljava/lang/Exception;
    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 295
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 274
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v7       #chunkSize:I
    .restart local v9       #contentBuf:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #contentLen:J
    .restart local v13       #firstLine:Ljava/lang/String;
    .restart local v15       #headerLine:Ljava/lang/String;
    .restart local v16       #httpStatus:Lorg/cybergarage/http/HTTPStatus;
    .restart local v17       #isChunkedRequest:Z
    .restart local v18       #readBuf:[B
    .restart local v19       #readCnt:J
    .restart local v22       #reader:Ljava/io/BufferedInputStream;
    .restart local v23       #skipCnt:J
    .restart local v25       #skipLen:J
    .restart local v27       #statCode:I
    :cond_10
    add-long v25, v25, v23

    .line 275
    :try_start_9
    const-string v28, "\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v28, v25, v28

    if-ltz v28, :cond_b

    goto :goto_8

    .line 281
    .restart local v8       #chunkSizeLine:Ljava/lang/String;
    :cond_11
    const-wide/16 v10, 0x0

    goto :goto_9

    .line 283
    .end local v8           #chunkSizeLine:Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 284
    .restart local v12       #e:Ljava/lang/Exception;
    const-wide/16 v10, 0x0

    goto/16 :goto_4

    .line 288
    .end local v12           #e:Ljava/lang/Exception;
    .end local v23           #skipCnt:J
    .end local v25           #skipLen:J
    :cond_12
    const-wide/16 v10, 0x0

    goto/16 :goto_4

    .line 291
    .end local v7           #chunkSize:I
    .end local v18           #readBuf:[B
    .end local v19           #readCnt:J
    :cond_13
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 298
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 235
    .end local v9           #contentBuf:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v28

    goto/16 :goto_3
.end method

.method protected set(Lorg/cybergarage/http/HTTPSocket;)Z
    .locals 1
    .parameter "httpSock"

    .prologue
    .line 308
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public setCacheControl(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 817
    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setCacheControl(Ljava/lang/String;I)V

    .line 818
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1
    .parameter "directive"

    .prologue
    .line 806
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;I)V
    .locals 3
    .parameter "directive"
    .parameter "value"

    .prologue
    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, strVal:Ljava/lang/String;
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 665
    const-string v0, "Connection"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 552
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 553
    return-void
.end method

.method public setContent(Ljava/lang/String;Z)V
    .locals 1
    .parameter "data"
    .parameter "updateWithContentLength"

    .prologue
    .line 547
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 548
    return-void
.end method

.method public setContent([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 542
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 543
    return-void
.end method

.method public setContent([BZ)V
    .locals 2
    .parameter "data"
    .parameter "updateWithContentLength"

    .prologue
    .line 535
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 536
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 537
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 538
    :cond_0
    return-void
.end method

.method public setContentInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 587
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 588
    return-void
.end method

.method public setContentLength(J)V
    .locals 1
    .parameter "len"

    .prologue
    .line 646
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/http/HTTPPacket;->setLongHeader(Ljava/lang/String;J)V

    .line 647
    return-void
.end method

.method public setContentRange(JJJ)V
    .locals 5
    .parameter "firstPos"
    .parameter "lastPos"
    .parameter "length"

    .prologue
    .line 704
    const-string v0, ""

    .line 705
    .local v0, rangeStr:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v1, v3, p5

    if-gez v1, :cond_0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return-void

    .line 708
    :cond_0
    const-string v1, "*"

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 606
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 3
    .parameter "cal"

    .prologue
    .line 871
    new-instance v0, Lorg/cybergarage/http/Date;

    invoke-direct {v0, p1}, Lorg/cybergarage/http/Date;-><init>(Ljava/util/Calendar;)V

    .line 872
    .local v0, date:Lorg/cybergarage/http/Date;
    const-string v1, "Date"

    invoke-virtual {v0}, Lorg/cybergarage/http/Date;->getDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public setHeader(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 429
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public setHeader(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 434
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 420
    .local v0, header:Lorg/cybergarage/http/HTTPHeader;
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, p2}, Lorg/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/http/HTTPPacket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Lorg/cybergarage/http/HTTPHeader;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 439
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 3
    .parameter "host"

    .prologue
    .line 853
    move-object v0, p1

    .line 854
    .local v0, hostAddr:Ljava/lang/String;
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    :cond_0
    const-string v1, "HOST"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public setHost(Ljava/lang/String;I)V
    .locals 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 845
    move-object v0, p1

    .line 846
    .local v0, hostAddr:Ljava/lang/String;
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 848
    :cond_0
    const-string v1, "HOST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public setIntegerHeader(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 486
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public setLongHeader(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 491
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 831
    const-string v0, "Server"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 466
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "startWidth"
    .parameter "endWidth"

    .prologue
    .line 456
    move-object v0, p2

    .line 457
    .local v0, headerValue:Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    :cond_0
    invoke-virtual {v0, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 891
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "ver"

    .prologue
    .line 138
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->version:Ljava/lang/String;

    .line 139
    return-void
.end method
