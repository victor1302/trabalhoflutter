import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widgets/statistic_card.dart';

class StatisticsScreen extends StatelessWidget {
  final List<Task> tasks;

  const StatisticsScreen({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    final total = tasks.length;
    final completed = tasks.where((task) => task.isCompleted).length;
    final pending = total - completed;
    final completionPercentage = total == 0 ? 0 : (completed / total * 100).toStringAsFixed(1);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Resumo das Tarefas',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            StatisticCard(
              title: 'Total de Tarefas',
              value: total.toString(),
              color: Colors.blue,
              icon: Icons.assignment,
            ),
            const SizedBox(height: 16),
            StatisticCard(
              title: 'Tarefas Concluídas',
              value: completed.toString(),
              color: Colors.green,
              icon: Icons.check_circle,
            ),
            const SizedBox(height: 16),
            StatisticCard(
              title: 'Tarefas Pendentes',
              value: pending.toString(),
              color: Colors.orange,
              icon: Icons.hourglass_bottom,
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text(
                    'Taxa de Conclusão',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: total == 0 ? 0 : completed / total,
                      minHeight: 12,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.deepPurple,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '$completionPercentage%',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
