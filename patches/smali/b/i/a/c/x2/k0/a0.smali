.class public final Lb/i/a/c/x2/k0/a0;
.super Ljava/lang/Object;
.source "PsDurationReader.java"


# instance fields
.field public final a:Lb/i/a/c/f3/d0;

.field public final b:Lb/i/a/c/f3/x;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/i/a/c/f3/d0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lb/i/a/c/f3/d0;-><init>(J)V

    iput-object v0, p0, Lb/i/a/c/x2/k0/a0;->a:Lb/i/a/c/f3/d0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lb/i/a/c/x2/k0/a0;->f:J

    .line 4
    iput-wide v0, p0, Lb/i/a/c/x2/k0/a0;->g:J

    .line 5
    iput-wide v0, p0, Lb/i/a/c/x2/k0/a0;->h:J

    .line 6
    new-instance v0, Lb/i/a/c/f3/x;

    invoke-direct {v0}, Lb/i/a/c/f3/x;-><init>()V

    iput-object v0, p0, Lb/i/a/c/x2/k0/a0;->b:Lb/i/a/c/f3/x;

    return-void
.end method

.method public static c(Lb/i/a/c/f3/x;)J
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lb/i/a/c/f3/x;->b:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Lb/i/a/c/f3/x;->a()I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v5, 0x9

    if-ge v2, v5, :cond_12

    return-wide v3

    :cond_12
    new-array v2, v5, [B

    .line 3
    iget-object v6, v0, Lb/i/a/c/f3/x;->a:[B

    iget v7, v0, Lb/i/a/c/f3/x;->b:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v6, v0, Lb/i/a/c/f3/x;->b:I

    add-int/2addr v6, v5

    iput v6, v0, Lb/i/a/c/f3/x;->b:I

    .line 5
    invoke-virtual {v0, v1}, Lb/i/a/c/f3/x;->E(I)V

    .line 6
    aget-byte v0, v2, v8

    and-int/lit16 v0, v0, 0xc4

    const/16 v1, 0x44

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v0, v1, :cond_32

    goto :goto_4d

    .line 7
    :cond_32
    aget-byte v0, v2, v9

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_38

    goto :goto_4d

    .line 8
    :cond_38
    aget-byte v0, v2, v7

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_3e

    goto :goto_4d

    .line 9
    :cond_3e
    aget-byte v0, v2, v6

    and-int/2addr v0, v10

    if-eq v0, v10, :cond_44

    goto :goto_4d

    :cond_44
    const/16 v0, 0x8

    .line 10
    aget-byte v0, v2, v0

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    :goto_4e
    if-nez v0, :cond_51

    return-wide v3

    .line 11
    :cond_51
    aget-byte v0, v2, v8

    int-to-long v0, v0

    const-wide/16 v3, 0x38

    and-long/2addr v0, v3

    shr-long/2addr v0, v5

    const/16 v3, 0x1e

    shl-long/2addr v0, v3

    aget-byte v3, v2, v8

    int-to-long v3, v3

    const-wide/16 v11, 0x3

    and-long/2addr v3, v11

    const/16 v8, 0x1c

    shl-long/2addr v3, v8

    or-long/2addr v0, v3

    aget-byte v3, v2, v10

    int-to-long v3, v3

    const-wide/16 v13, 0xff

    and-long/2addr v3, v13

    const/16 v8, 0x14

    shl-long/2addr v3, v8

    or-long/2addr v0, v3

    aget-byte v3, v2, v9

    int-to-long v3, v3

    const-wide/16 v15, 0xf8

    and-long/2addr v3, v15

    shr-long/2addr v3, v5

    const/16 v8, 0xf

    shl-long/2addr v3, v8

    or-long/2addr v0, v3

    aget-byte v3, v2, v9

    int-to-long v3, v3

    and-long/2addr v3, v11

    const/16 v8, 0xd

    shl-long/2addr v3, v8

    or-long/2addr v0, v3

    aget-byte v3, v2, v5

    int-to-long v3, v3

    and-long/2addr v3, v13

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    aget-byte v2, v2, v7

    int-to-long v2, v2

    and-long/2addr v2, v15

    shr-long/2addr v2, v5

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Lb/i/a/c/x2/i;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/a/c/x2/k0/a0;->b:Lb/i/a/c/f3/x;

    sget-object v1, Lb/i/a/c/f3/e0;->f:[B

    invoke-virtual {v0, v1}, Lb/i/a/c/f3/x;->B([B)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/i/a/c/x2/k0/a0;->c:Z

    .line 3
    invoke-interface {p1}, Lb/i/a/c/x2/i;->k()V

    const/4 p1, 0x0

    return p1
.end method

.method public final b([BI)I
    .locals 2

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method
