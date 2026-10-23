.class public final synthetic Lv33;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ll43;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Ll43;ILjava/util/Calendar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv33;->a:Ll43;

    .line 5
    .line 6
    iput p2, p0, Lv33;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lv33;->c:Ljava/util/Calendar;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/util/Locale;

    .line 2
    .line 3
    iget-object p1, p0, Lv33;->a:Ll43;

    .line 4
    .line 5
    iget-object p1, p1, Ll43;->c:Ljava/util/Locale;

    .line 6
    .line 7
    iget v0, p0, Lv33;->b:I

    .line 8
    .line 9
    const/16 v1, 0xf

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance p0, Lk43;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lk43;-><init>(Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance v1, Lc43;

    .line 20
    .line 21
    iget-object p0, p0, Lv33;->c:Ljava/util/Calendar;

    .line 22
    .line 23
    invoke-direct {v1, v0, p0, p1}, Lc43;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method
