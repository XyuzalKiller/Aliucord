.class public Lorg/webrtc/BaseBitrateAdjuster;
.super Ljava/lang/Object;
.source "BaseBitrateAdjuster.java"

# interfaces
.implements Lorg/webrtc/BitrateAdjuster;


# instance fields
.field public targetBitrateBps:I

.field public targetFps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdjustedBitrateBps()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/BaseBitrateAdjuster;->targetBitrateBps:I

    return v0
.end method

.method public getCodecConfigFramerate()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/BaseBitrateAdjuster;->targetFps:I

    return v0
.end method

.method public reportEncodedFrame(I)V
    .locals 0

    return-void
.end method

.method public setTargets(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/BaseBitrateAdjuster;->targetBitrateBps:I

    .line 2
    iput p2, p0, Lorg/webrtc/BaseBitrateAdjuster;->targetFps:I

    return-void
.end method
