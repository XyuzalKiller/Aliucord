.class public final Lb/i/a/c/x2/h0/e;
.super Ljava/lang/Object;
.source "MlltSeeker.java"

# interfaces
.implements Lb/i/a/c/x2/h0/g;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/i/a/c/x2/h0/e;->a:[J

    .line 3
    iput-object p2, p0, Lb/i/a/c/x2/h0/e;->b:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_11

    goto :goto_1a

    .line 4
    :cond_11
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Lb/i/a/c/f3/e0;->B(J)J

    move-result-wide p3

    :goto_1a
    iput-wide p3, p0, Lb/i/a/c/x2/h0/e;->c:J

    return-void
.end method

.method public static b(J[J[J)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J[J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p2, p0, p1, v0, v0}, Lb/i/a/c/f3/e0;->e([JJZZ)I

    move-result v1

    .line 2
    aget-wide v2, p2, v1

    .line 3
    aget-wide v4, p3, v1

    add-int/2addr v1, v0

    .line 4
    array-length v0, p2

    if-ne v1, v0, :cond_1a

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1a
    aget-wide v6, p2, v1

    .line 7
    aget-wide p2, p3, v1

    cmp-long v0, v6, v2

    if-nez v0, :cond_25

    const-wide/16 v0, 0x0

    goto :goto_2b

    :cond_25
    long-to-double v0, p0

    long-to-double v8, v2

    sub-double/2addr v0, v8

    sub-long/2addr v6, v2

    long-to-double v2, v6

    div-double/2addr v0, v2

    :goto_2b
    sub-long/2addr p2, v4

    long-to-double p2, p2

    mul-double v0, v0, p2

    double-to-long p2, v0

    add-long/2addr p2, v4

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/a/c/x2/h0/e;->a:[J

    iget-object v1, p0, Lb/i/a/c/x2/h0/e;->b:[J

    .line 2
    invoke-static {p1, p2, v0, v1}, Lb/i/a/c/x2/h0/e;->b(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lb/i/a/c/f3/e0;->B(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public h(J)Lb/i/a/c/x2/t$a;
    .locals 6

    .line 1
    iget-wide v4, p0, Lb/i/a/c/x2/h0/e;->c:J

    const-wide/16 v2, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lb/i/a/c/f3/e0;->i(JJJ)J

    move-result-wide p1

    .line 2
    invoke-static {p1, p2}, Lb/i/a/c/f3/e0;->M(J)J

    move-result-wide p1

    iget-object v0, p0, Lb/i/a/c/x2/h0/e;->b:[J

    iget-object v1, p0, Lb/i/a/c/x2/h0/e;->a:[J

    invoke-static {p1, p2, v0, v1}, Lb/i/a/c/x2/h0/e;->b(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 3
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lb/i/a/c/f3/e0;->B(J)J

    move-result-wide v0

    .line 4
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 5
    new-instance v2, Lb/i/a/c/x2/t$a;

    new-instance v3, Lb/i/a/c/x2/u;

    invoke-direct {v3, v0, v1, p1, p2}, Lb/i/a/c/x2/u;-><init>(JJ)V

    invoke-direct {v2, v3}, Lb/i/a/c/x2/t$a;-><init>(Lb/i/a/c/x2/u;)V

    return-object v2
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/i/a/c/x2/h0/e;->c:J

    return-wide v0
.end method
