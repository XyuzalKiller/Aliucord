.class public Landroidx/exifinterface/media/ExifInterfaceUtils;
.super Ljava/lang/Object;
.source "ExifInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterfaceUtils$Api23Impl;,
        Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifInterfaceUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_24

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p0, "ExifInterfaceUtils"

    const-string v0, "Error closing fd."

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_8

    .line 1
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    .line 2
    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static convertToLongArray(Ljava/lang/Object;)[J
    .locals 4

    .line 1
    instance-of v0, p0, [I

    if-eqz v0, :cond_16

    .line 2
    check-cast p0, [I

    .line 3
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 5
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    return-object v0

    .line 6
    :cond_16
    instance-of v0, p0, [J

    if-eqz v0, :cond_1d

    .line 7
    check-cast p0, [J

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    add-int/2addr v2, v3

    .line 2
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    :cond_12
    return v2
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    :goto_4
    if-lez p2, :cond_1e

    .line 3
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v2, :cond_16

    sub-int/2addr p2, v4

    .line 5
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 6
    :cond_16
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to copy the given amount of bytes from the inputstream to the output stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    return-void
.end method

.method public static parseSubSeconds(Ljava/lang/String;)J
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_12} :catch_1c

    :goto_12
    if-ge v0, v1, :cond_1b

    const-wide/16 v4, 0xa

    mul-long v2, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1b
    return-wide v2

    :catch_1c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static startsWith([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 1
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    :cond_b
    const/4 v1, 0x0

    .line 2
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 3
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    return v0
.end method
