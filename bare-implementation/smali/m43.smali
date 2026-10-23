.class public final synthetic Lm43;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/util/TimeZone;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm43;->a:Ljava/util/TimeZone;

    .line 5
    .line 6
    iput-boolean p2, p0, Lm43;->b:Z

    .line 7
    .line 8
    iput p3, p0, Lm43;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lm43;->d:Ljava/util/Locale;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lv43;

    .line 2
    .line 3
    iget-object p1, p0, Lm43;->a:Ljava/util/TimeZone;

    .line 4
    .line 5
    iget-boolean v0, p0, Lm43;->b:Z

    .line 6
    .line 7
    iget v1, p0, Lm43;->c:I

    .line 8
    .line 9
    iget-object p0, p0, Lm43;->d:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
