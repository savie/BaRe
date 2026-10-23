.class public final Lvw5;
.super Ljava/lang/Object;

# interfaces
.implements Lz61;


# instance fields
.field public final a:[B

.field public final b:Lz61;


# direct methods
.method public constructor <init>(Lz61;[BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array v0, p3, [B

    .line 5
    .line 6
    iput-object v0, p0, Lvw5;->a:[B

    .line 7
    .line 8
    iput-object p1, p0, Lvw5;->b:Lz61;

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    invoke-static {p2, p0, v0, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
