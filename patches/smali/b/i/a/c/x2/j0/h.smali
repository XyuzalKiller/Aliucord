.class public final Lb/i/a/c/x2/j0/h;
.super Lb/i/a/c/x2/j0/i;
.source "OpusReader.java"


# static fields
.field public static final n:[B


# instance fields
.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_a

    sput-object v0, Lb/i/a/c/x2/j0/h;->n:[B

    return-void

    :array_a
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/i/a/c/x2/j0/i;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/i/a/c/f3/x;)J
    .locals 6

    .line 1
    iget-object p1, p1, Lb/i/a/c/f3/x;->a:[B

    const/4 v0, 0x0

    .line 2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    if-eq v1, v3, :cond_17

    if-eq v1, v2, :cond_17

    .line 3
    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_17

    :cond_16
    const/4 v2, 0x1

    :cond_17
    :goto_17
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_23

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_36

    :cond_23
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_2e

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_36

    :cond_2e
    if-ne v1, p1, :cond_34

    const p1, 0xea60

    goto :goto_36

    :cond_34
    shl-int p1, v5, v1

    :goto_36
    int-to-long v0, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Lb/i/a/c/x2/j0/i;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Lb/i/a/c/f3/x;JLb/i/a/c/x2/j0/i$b;)Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 1
    iget-boolean p2, p0, Lb/i/a/c/x2/j0/h;->o:Z

    const/4 p3, 0x1

    if-nez p2, :cond_32

    .line 2
    iget-object p2, p1, Lb/i/a/c/f3/x;->a:[B

    .line 3
    iget p1, p1, Lb/i/a/c/f3/x;->c:I

    .line 4
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    .line 5
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 6
    invoke-static {p1}, Lb/c/a/a0/d;->g([B)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v0, Lb/i/a/c/j1$b;

    invoke-direct {v0}, Lb/i/a/c/j1$b;-><init>()V

    const-string v1, "audio/opus"

    .line 8
    iput-object v1, v0, Lb/i/a/c/j1$b;->k:Ljava/lang/String;

    .line 9
    iput p2, v0, Lb/i/a/c/j1$b;->x:I

    const p2, 0xbb80

    .line 10
    iput p2, v0, Lb/i/a/c/j1$b;->y:I

    .line 11
    iput-object p1, v0, Lb/i/a/c/j1$b;->m:Ljava/util/List;

    .line 12
    invoke-virtual {v0}, Lb/i/a/c/j1$b;->a()Lb/i/a/c/j1;

    move-result-object p1

    iput-object p1, p4, Lb/i/a/c/x2/j0/i$b;->a:Lb/i/a/c/j1;

    .line 13
    iput-boolean p3, p0, Lb/i/a/c/x2/j0/h;->o:Z

    return p3

    .line 14
    :cond_32
    iget-object p2, p4, Lb/i/a/c/x2/j0/i$b;->a:Lb/i/a/c/j1;

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Lb/i/a/c/f3/x;->f()I

    move-result p2

    const p4, 0x4f707573

    const/4 v0, 0x0

    if-ne p2, p4, :cond_42

    goto :goto_43

    :cond_42
    const/4 p3, 0x0

    .line 17
    :goto_43
    invoke-virtual {p1, v0}, Lb/i/a/c/f3/x;->E(I)V

    return p3
.end method

.method public e(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/i/a/c/x2/j0/i;->e(Z)V

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb/i/a/c/x2/j0/h;->o:Z

    :cond_8
    return-void
.end method
