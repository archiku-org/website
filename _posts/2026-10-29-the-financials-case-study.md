---
layout: post
title: "One night of Claude Code, five departments of value: the Financials case study"
description: "A real app, vibe coded in one night by a non-developer, adopted by five departments and inherited by a new CIO. The Financials case study, and the analysis that became the spec."
lead: "The best way to understand what Archiku does is to watch it dig. The Financials case study gives you the full story and the complete analysis, exactly as it was delivered."
author: Christophe VG
permalink: /blog/the-financials-case-study
---

The best introduction to Archiku is not a feature list. It is a true
story, about an app that was never supposed to exist, built during a
single night and about the question it ended up asking the new CIO.

## The app nobody ordered

Meet John. John works in marketing and had been asking the finance
department for one simple thing for months: a way to track his budget
throughout the year. The answer was always the same. The big accounting
platform could not do it, a feature request could be proposed with the
vendor, but in the end nothing would happen.

So one night, John downloaded Claude Code and prompted his own tool into
existence. Budget tracking, expected incomes and expenses, recurring
transactions. It worked. Word spread over lunch, colleagues adopted the
app and before anyone in IT had heard of it, five departments were running
their budgets on John's _Financials_ app.

I know this story in detail because it is mine: I built the app the way
John did and I have never once looked at its code.  It is really, honestly
a black box to its own creator, which is exactly what makes it the perfect
case study. The setting is common ground these days, it's a situation many
IT leaders recognize, minus the usual excuses: a codebase of real value,
with real users and no understanding of what is actually inside it.

## The question at the top

Every story like this ends on a desk like Peter's. The new CIO, tasked with
getting the software landscape under control, finds the app. It cannot
simply be thrown out: it exists because the official platform left a real
gap. But it cannot stay as is either: no support, no authentication, no
ownership. The company's policy says buy over build, so Peter asks the
development agency to rebuild it properly.

And the agency asks the question that has only one uncomfortable answer:
where are the functional specifications? The code is the only specification
that exists, nobody likes to read it and writing specs from a black box means
guessing at the parts that would be missed.

## Two days to the truth

So Archiku dug. Two days later the delivery was on Peter's desk: a
validated functional analysis of the app, fifteen chapters, from executive
summary to scope and coverage, concepts, business rules, process flows and
the boundaries of the system. Every finding traceable to the exact line of
code it came from, so no claim without its evidence.

And in the corners where a typical analysis stops, the dig kept going:
the quirks, the conventions, the sensitivities of the code. The things the
original prompt never said out loud but the implementation had quietly
decided. That is what the development team needed, because that is where
the difference between rebuilding the app and rebuilding its happy path
hides.

## The full circle

In the story that frames the case study, the agency rebuilds the app from
the analysis and a second Archiku run compares the new code against the
old. That comparison gives Peter the evidence he needed: the functional
essence of the original, delivered by the rebuild, verified against an
independent baseline. The analysis becomes the specification for the
delivery and its acceptance test in one, and the app lives on as
supported, owned software.

## See for yourself

The case study is not a written-up anecdote. The [story](/case-study/)
walks through it beat by beat, the [complete analysis as
delivered](/case-study/financials/reports/functional-analysis/) is online
and interlinked, down to the business rules and every claim in it links back
to the [actual codebase on GitHub](https://github.com/christophevg/financials).
Reading it takes an hour, which is rather the point of the exercise.

Your version of this story probably has different characters and the same
question. It starts the same way too: a [48-business-hour
intake](/#pricing) on one module, at a fixed fee, risk-free.
