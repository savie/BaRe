.class public final synthetic Lyk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lwk;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILwk;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lyk;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lyk;->b:Lwk;

    .line 7
    .line 8
    iput p3, p0, Lyk;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lyk;->a:I

    .line 8
    .line 9
    add-int/2addr p1, v0

    .line 10
    iget v0, p0, Lyk;->c:I

    .line 11
    .line 12
    invoke-static {p1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->q(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lyk;->b:Lwk;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lwk;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object p0, Lbe8;->a:Lbe8;

    .line 26
    .line 27
    return-object p0
.end method
