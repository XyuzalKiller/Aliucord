.class public final enum Lb/i/a/f/h/l/j1;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Lb/i/a/f/h/l/y4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/i/a/f/h/l/j1;",
        ">;",
        "Lb/i/a/f/h/l/y4;"
    }
.end annotation


# static fields
.field public static final enum j:Lb/i/a/f/h/l/j1;

.field public static final enum k:Lb/i/a/f/h/l/j1;

.field public static final enum l:Lb/i/a/f/h/l/j1;

.field public static final enum m:Lb/i/a/f/h/l/j1;

.field public static final enum n:Lb/i/a/f/h/l/j1;

.field public static final enum o:Lb/i/a/f/h/l/j1;

.field public static final synthetic p:[Lb/i/a/f/h/l/j1;


# instance fields
.field private final zzh:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lb/i/a/f/h/l/j1;

    const-string v1, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lb/i/a/f/h/l/j1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/i/a/f/h/l/j1;->j:Lb/i/a/f/h/l/j1;

    .line 2
    new-instance v1, Lb/i/a/f/h/l/j1;

    const-string v3, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lb/i/a/f/h/l/j1;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lb/i/a/f/h/l/j1;->k:Lb/i/a/f/h/l/j1;

    .line 3
    new-instance v3, Lb/i/a/f/h/l/j1;

    const-string v5, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lb/i/a/f/h/l/j1;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lb/i/a/f/h/l/j1;->l:Lb/i/a/f/h/l/j1;

    .line 4
    new-instance v5, Lb/i/a/f/h/l/j1;

    const-string v7, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lb/i/a/f/h/l/j1;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lb/i/a/f/h/l/j1;->m:Lb/i/a/f/h/l/j1;

    .line 5
    new-instance v7, Lb/i/a/f/h/l/j1;

    const-string v9, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lb/i/a/f/h/l/j1;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lb/i/a/f/h/l/j1;->n:Lb/i/a/f/h/l/j1;

    .line 6
    new-instance v9, Lb/i/a/f/h/l/j1;

    const-string v11, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lb/i/a/f/h/l/j1;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lb/i/a/f/h/l/j1;->o:Lb/i/a/f/h/l/j1;

    const/4 v11, 0x6

    new-array v11, v11, [Lb/i/a/f/h/l/j1;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lb/i/a/f/h/l/j1;->p:[Lb/i/a/f/h/l/j1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lb/i/a/f/h/l/j1;->zzh:I

    return-void
.end method

.method public static values()[Lb/i/a/f/h/l/j1;
    .locals 1

    .line 1
    sget-object v0, Lb/i/a/f/h/l/j1;->p:[Lb/i/a/f/h/l/j1;

    invoke-virtual {v0}, [Lb/i/a/f/h/l/j1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/i/a/f/h/l/j1;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lb/i/a/f/h/l/j1;->zzh:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lb/i/a/f/h/l/j1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lb/i/a/f/h/l/j1;->zzh:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
